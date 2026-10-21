// LeanGlass native LeanCRT spike.
// Renders one still through LeanCRT's pass graph with plain D3D11 and D3DCompile.
// No ReShade runtime. The HLSL is generated from the unmodified LeanCRT source
// with ReShade's fxc in performance/spec-constant mode (see README.md).
#define WIN32_LEAN_AND_MEAN
#define NOMINMAX
#include <windows.h>
#include <d3d11.h>
#include <d3dcompiler.h>
#include <wrl/client.h>

#include <algorithm>
#include <cfloat>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <iostream>
#include <iterator>
#include <string>
#include <unordered_map>
#include <utility>
#include <vector>

using Microsoft::WRL::ComPtr;

namespace
{
constexpr UINT W = 1920;
constexpr UINT H = 1080;
constexpr UINT BLOOM_W = 480;
constexpr UINT BLOOM_H = 270;
constexpr UINT BEAM_W = 1024;
constexpr UINT BEAM_H = 120;

void Check(HRESULT hr, const char* what)
{
    if (FAILED(hr))
    {
        std::cerr << what << " failed: 0x" << std::hex << hr << std::dec << "\n";
        std::exit(1);
    }
}

enum TexId
{
    T_INPUT,
    T_DEPTH,
    T_PREBLUR_VERT,
    T_PREBLUR_HORIZ,
    T_BEAM_DIST,
    T_ELECTRON_BEAMS,
    T_BEAM_CONVERGENCE,
    T_BLOOM_APPROX_H,
    T_BLOOM_APPROX_V,
    T_BLUR_VERT,
    T_BLUR_HORIZ,
    T_DEINTERLACE,
    T_FREEZE,
    T_PHOSPHOR_MASK,
    T_PHOSPHOR_BLUE,
    T_MASKED,
    T_BRIGHT,
    T_BLOOM_VERT,
    T_BLOOM_HORIZ,
    T_GEOMETRY,
    T_FINAL,
    T_OUTPUT,
    T_COUNT
};

struct Texture
{
    ComPtr<ID3D11Texture2D>          tex;
    ComPtr<ID3D11ShaderResourceView> srv;
    ComPtr<ID3D11RenderTargetView>   rtv;
    ComPtr<ID3D11UnorderedAccessView> uav;
    UINT w = 0;
    UINT h = 0;
};

struct Pass
{
    const char* name;
    const char* vs;
    const char* ps;
    const char* cs;
    int         rt0;
    int         rt1;
    bool        clear;
    UINT        dx;
    UINT        dy;
};

struct StageBindings
{
    std::vector<std::pair<UINT, ID3D11ShaderResourceView*>> srvs;
    std::vector<std::pair<UINT, ID3D11SamplerState*>>       samplers;
    std::vector<std::pair<UINT, ID3D11UnorderedAccessView*>> uavs;
    bool uses_cbuffer = false;
};

Texture MakeTexture(ID3D11Device* device, UINT w, UINT h, DXGI_FORMAT format, UINT bind, const void* init = nullptr, UINT pitch = 0)
{
    Texture texture;
    texture.w = w;
    texture.h = h;

    D3D11_TEXTURE2D_DESC desc = {};
    desc.Width              = w;
    desc.Height             = h;
    desc.MipLevels          = 1;
    desc.ArraySize          = 1;
    desc.Format             = format;
    desc.SampleDesc.Count   = 1;
    desc.Usage              = D3D11_USAGE_DEFAULT;
    desc.BindFlags          = bind;

    D3D11_SUBRESOURCE_DATA data = {};
    data.pSysMem     = init;
    data.SysMemPitch = pitch;

    Check(device->CreateTexture2D(&desc, init ? &data : nullptr, &texture.tex), "CreateTexture2D");

    if (bind & D3D11_BIND_SHADER_RESOURCE)
    {
        D3D11_SHADER_RESOURCE_VIEW_DESC srv = {};
        srv.Format              = format;
        srv.ViewDimension       = D3D11_SRV_DIMENSION_TEXTURE2D;
        srv.Texture2D.MipLevels = 1;
        Check(device->CreateShaderResourceView(texture.tex.Get(), &srv, &texture.srv), "CreateShaderResourceView");
    }
    if (bind & D3D11_BIND_RENDER_TARGET)
    {
        D3D11_RENDER_TARGET_VIEW_DESC rtv = {};
        rtv.Format        = format;
        rtv.ViewDimension = D3D11_RTV_DIMENSION_TEXTURE2D;
        Check(device->CreateRenderTargetView(texture.tex.Get(), &rtv, &texture.rtv), "CreateRenderTargetView");
    }
    if (bind & D3D11_BIND_UNORDERED_ACCESS)
    {
        D3D11_UNORDERED_ACCESS_VIEW_DESC uav = {};
        uav.Format        = format;
        uav.ViewDimension = D3D11_UAV_DIMENSION_TEXTURE2D;
        Check(device->CreateUnorderedAccessView(texture.tex.Get(), &uav, &texture.uav), "CreateUnorderedAccessView");
    }

    return texture;
}

std::string ReadText(const char* path)
{
    std::ifstream file(path, std::ios::binary);
    if (!file)
    {
        std::cerr << "Could not open " << path << "\n";
        std::exit(1);
    }
    return std::string(std::istreambuf_iterator<char>(file), std::istreambuf_iterator<char>());
}

std::vector<uint8_t> MakeInput()
{
    std::vector<uint8_t> pixels(static_cast<size_t>(W) * H * 4);
    const uint8_t bars[8][3] = {
        {235, 235, 235}, {235, 235, 16}, {16, 235, 235}, {16, 235, 16},
        {235, 16, 235}, {235, 16, 16}, {16, 16, 235}, {16, 16, 16}
    };

    for (UINT y = 0; y < H; ++y)
    {
        for (UINT x = 0; x < W; ++x)
        {
            uint8_t* p = &pixels[(static_cast<size_t>(y) * W + x) * 4];
            if (y > H * 3 / 4)
            {
                const uint8_t g = static_cast<uint8_t>((x * 255) / (W - 1));
                p[0] = p[1] = p[2] = g;
            }
            else
            {
                const int bar = std::min(7, static_cast<int>(x * 8 / W));
                p[0] = bars[bar][0];
                p[1] = bars[bar][1];
                p[2] = bars[bar][2];
            }
            p[3] = 255;
        }
    }

    // A few reference lines so geometry and scaling errors are visible.
    for (UINT x = 0; x < W; ++x)
    {
        for (UINT y : {0u, H / 2, H - 1})
        {
            uint8_t* p = &pixels[(static_cast<size_t>(y) * W + x) * 4];
            p[0] = p[1] = p[2] = 255;
        }
    }

    return pixels;
}

ComPtr<ID3DBlob> Compile(const std::string& source, const char* entry, const char* target)
{
    ComPtr<ID3DBlob> blob;
    ComPtr<ID3DBlob> errors;
    const HRESULT hr = D3DCompile(source.data(), source.size(), "LeanCRT.hlsl", nullptr, nullptr,
        entry, target, D3DCOMPILE_ENABLE_STRICTNESS, 0, &blob, &errors);
    if (FAILED(hr))
    {
        if (errors)
            std::cerr << static_cast<const char*>(errors->GetBufferPointer()) << "\n";
        Check(hr, entry);
    }
    return blob;
}

StageBindings Reflect(ID3DBlob* blob, const Texture* textures, ID3D11SamplerState* const* samplers,
    ID3D11UnorderedAccessView* const* uavs)
{
    StageBindings out;

    ComPtr<ID3D11ShaderReflection> reflection;
    Check(D3DReflect(blob->GetBufferPointer(), blob->GetBufferSize(), IID_ID3D11ShaderReflection, &reflection), "D3DReflect");

    D3D11_SHADER_DESC shader = {};
    Check(reflection->GetDesc(&shader), "GetDesc");

    for (UINT i = 0; i < shader.BoundResources; ++i)
    {
        D3D11_SHADER_INPUT_BIND_DESC bind = {};
        Check(reflection->GetResourceBindingDesc(i, &bind), "GetResourceBindingDesc");

        if (std::strstr(bind.Name, "samplerFinal") != nullptr)
            std::cout << "  binding " << bind.Name << " -> t" << bind.BindPoint << "\n";

        switch (bind.Type)
        {
        case D3D_SIT_TEXTURE:
            if (bind.BindPoint < T_COUNT)
                out.srvs.push_back({ bind.BindPoint, textures[bind.BindPoint].srv.Get() });
            break;
        case D3D_SIT_SAMPLER:
            if (bind.BindPoint < 3)
                out.samplers.push_back({ bind.BindPoint, samplers[bind.BindPoint] });
            break;
        case D3D_SIT_CBUFFER:
            out.uses_cbuffer = true;
            break;
        case D3D_SIT_UAV_RWTYPED:
            if (bind.BindPoint < 2)
                out.uavs.push_back({ bind.BindPoint, uavs[bind.BindPoint] });
            break;
        default:
            break;
        }
    }

    return out;
}

void UploadFrameCount(ID3D11DeviceContext* context, ID3D11Buffer* buffer, UINT frame)
{
    context->UpdateSubresource(buffer, 0, nullptr, &frame, 0, 0);
}

void PrintAverage(ID3D11Device* device, ID3D11DeviceContext* context, Texture& texture, const char* name)
{
    D3D11_TEXTURE2D_DESC desc = {};
    texture.tex->GetDesc(&desc);

    D3D11_TEXTURE2D_DESC staging_desc = desc;
    staging_desc.Usage          = D3D11_USAGE_STAGING;
    staging_desc.BindFlags      = 0;
    staging_desc.CPUAccessFlags = D3D11_CPU_ACCESS_READ;
    staging_desc.MiscFlags      = 0;

    ComPtr<ID3D11Texture2D> staging;
    if (FAILED(device->CreateTexture2D(&staging_desc, nullptr, &staging)))
        return;
    context->CopyResource(staging.Get(), texture.tex.Get());

    D3D11_MAPPED_SUBRESOURCE mapped = {};
    if (FAILED(context->Map(staging.Get(), 0, D3D11_MAP_READ, 0, &mapped)))
        return;

    double sum = 0;
    size_t count = 0;
    for (UINT y = 0; y < texture.h; ++y)
    {
        const uint8_t* row = static_cast<const uint8_t*>(mapped.pData) + static_cast<size_t>(y) * mapped.RowPitch;
        for (UINT x = 0; x < texture.w; ++x)
        {
            if (desc.Format == DXGI_FORMAT_R8G8B8A8_UNORM)
            {
                sum += (row[x * 4 + 0] + row[x * 4 + 1] + row[x * 4 + 2]) / (3.0 * 255.0);
                ++count;
            }
            else if (desc.Format == DXGI_FORMAT_R16G16B16A16_UNORM)
            {
                const uint16_t* p = reinterpret_cast<const uint16_t*>(row) + x * 4;
                sum += (p[0] + p[1] + p[2]) / (3.0 * 65535.0);
                ++count;
            }
            else if (desc.Format == DXGI_FORMAT_R16G16_UNORM)
            {
                const uint16_t* p = reinterpret_cast<const uint16_t*>(row) + x * 2;
                sum += (p[0] + p[1]) / (2.0 * 65535.0);
                ++count;
            }
            else if (desc.Format == DXGI_FORMAT_R16_UNORM)
            {
                const uint16_t* p = reinterpret_cast<const uint16_t*>(row) + x;
                sum += p[0] / 65535.0;
                ++count;
            }
            else if (desc.Format == DXGI_FORMAT_R10G10B10A2_UNORM)
            {
                const uint32_t p = reinterpret_cast<const uint32_t*>(row)[x];
                const double r = (p & 0x3ff) / 1023.0;
                const double g = ((p >> 10) & 0x3ff) / 1023.0;
                const double b = ((p >> 20) & 0x3ff) / 1023.0;
                sum += (r + g + b) / 3.0;
                ++count;
            }
        }
    }

    context->Unmap(staging.Get(), 0);
    if (count)
        std::cout << "  avg " << name << ": " << (sum / count) << "\n";
}

void PrintRow(ID3D11Device* device, ID3D11DeviceContext* context, Texture& texture, UINT y,
    UINT x0, UINT x1, const char* name)
{
    D3D11_TEXTURE2D_DESC desc = {};
    texture.tex->GetDesc(&desc);

    D3D11_TEXTURE2D_DESC staging_desc = desc;
    staging_desc.Usage          = D3D11_USAGE_STAGING;
    staging_desc.BindFlags      = 0;
    staging_desc.CPUAccessFlags = D3D11_CPU_ACCESS_READ;
    staging_desc.MiscFlags      = 0;

    ComPtr<ID3D11Texture2D> staging;
    if (FAILED(device->CreateTexture2D(&staging_desc, nullptr, &staging)))
        return;
    context->CopyResource(staging.Get(), texture.tex.Get());

    D3D11_MAPPED_SUBRESOURCE mapped = {};
    if (FAILED(context->Map(staging.Get(), 0, D3D11_MAP_READ, 0, &mapped)))
        return;

    const uint8_t* row = static_cast<const uint8_t*>(mapped.pData) + static_cast<size_t>(y) * mapped.RowPitch;
    std::cout << "  row " << name << " y=" << y << ":";
    for (UINT x = x0; x < x1; ++x)
    {
        if (desc.Format == DXGI_FORMAT_R16G16_UNORM)
        {
            const uint16_t* p = reinterpret_cast<const uint16_t*>(row) + x * 2;
            std::cout << " " << p[0] << "," << p[1];
        }
        else if (desc.Format == DXGI_FORMAT_R16_UNORM)
        {
            const uint16_t* p = reinterpret_cast<const uint16_t*>(row) + x;
            std::cout << " " << p[0];
        }
        else if (desc.Format == DXGI_FORMAT_R16G16B16A16_UNORM)
        {
            const uint16_t* p = reinterpret_cast<const uint16_t*>(row) + x * 4;
            std::cout << " " << p[0] << "," << p[1] << "," << p[2];
        }
    }
    std::cout << "\n";

    context->Unmap(staging.Get(), 0);
}

void WriteBmp(const char* path, const uint8_t* rgba, UINT width, UINT height, UINT pitch)
{
    const UINT row_size = (width * 3 + 3) & ~3u;
    const UINT image_size = row_size * height;
    const UINT file_size = 54 + image_size;

    uint8_t header[54] = {};
    header[0] = 'B';
    header[1] = 'M';
    std::memcpy(&header[2], &file_size, 4);
    const uint32_t offset = 54;
    std::memcpy(&header[10], &offset, 4);
    const uint32_t dib_size = 40;
    std::memcpy(&header[14], &dib_size, 4);
    std::memcpy(&header[18], &width, 4);
    std::memcpy(&header[22], &height, 4);
    const uint16_t planes = 1;
    std::memcpy(&header[26], &planes, 2);
    const uint16_t bpp = 24;
    std::memcpy(&header[28], &bpp, 2);
    std::memcpy(&header[34], &image_size, 4);

    std::ofstream file(path, std::ios::binary);
    file.write(reinterpret_cast<const char*>(header), sizeof(header));

    std::vector<uint8_t> row(row_size, 0);
    for (UINT y = 0; y < height; ++y)
    {
        const uint8_t* src = rgba + static_cast<size_t>(height - 1 - y) * pitch;
        for (UINT x = 0; x < width; ++x)
        {
            row[x * 3 + 0] = src[x * 4 + 2];
            row[x * 3 + 1] = src[x * 4 + 1];
            row[x * 3 + 2] = src[x * 4 + 0];
        }
        file.write(reinterpret_cast<const char*>(row.data()), row.size());
    }
}

void SaveTextureBmp(ID3D11Device* device, ID3D11DeviceContext* context, Texture& texture, const char* path)
{
    D3D11_TEXTURE2D_DESC desc = {};
    texture.tex->GetDesc(&desc);
    if (desc.Format != DXGI_FORMAT_R8G8B8A8_UNORM)
        return;

    D3D11_TEXTURE2D_DESC staging_desc = desc;
    staging_desc.Usage          = D3D11_USAGE_STAGING;
    staging_desc.BindFlags      = 0;
    staging_desc.CPUAccessFlags = D3D11_CPU_ACCESS_READ;
    staging_desc.MiscFlags      = 0;

    ComPtr<ID3D11Texture2D> staging;
    if (FAILED(device->CreateTexture2D(&staging_desc, nullptr, &staging)))
        return;
    context->CopyResource(staging.Get(), texture.tex.Get());

    D3D11_MAPPED_SUBRESOURCE mapped = {};
    if (FAILED(context->Map(staging.Get(), 0, D3D11_MAP_READ, 0, &mapped)))
        return;

    WriteBmp(path, static_cast<const uint8_t*>(mapped.pData), texture.w, texture.h, mapped.RowPitch);
    context->Unmap(staging.Get(), 0);
}
} // namespace

int main()
{
    ComPtr<ID3D11Device>        device;
    ComPtr<ID3D11DeviceContext> context;

    const D3D_FEATURE_LEVEL levels[] = { D3D_FEATURE_LEVEL_11_0 };
    D3D_FEATURE_LEVEL        level = D3D_FEATURE_LEVEL_11_0;

    HRESULT hr = D3D11CreateDevice(nullptr, D3D_DRIVER_TYPE_HARDWARE, nullptr, 0, levels, 1,
        D3D11_SDK_VERSION, &device, &level, &context);
    if (FAILED(hr))
    {
        std::cout << "Hardware device unavailable, using WARP\n";
        hr = D3D11CreateDevice(nullptr, D3D_DRIVER_TYPE_WARP, nullptr, 0, levels, 1,
            D3D11_SDK_VERSION, &device, &level, &context);
    }
    Check(hr, "D3D11CreateDevice");

    const std::string source = ReadText("LeanCRT.hlsl");
    std::cout << "HLSL source: " << source.size() << " bytes\n";

    Texture textures[T_COUNT];
    const UINT srv_rtv = D3D11_BIND_SHADER_RESOURCE | D3D11_BIND_RENDER_TARGET;

    const std::vector<uint8_t> input = MakeInput();
    textures[T_INPUT]          = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R8G8B8A8_UNORM, D3D11_BIND_SHADER_RESOURCE, input.data(), W * 4);
    textures[T_DEPTH]          = MakeTexture(device.Get(), 1, 1, DXGI_FORMAT_R8G8B8A8_UNORM, D3D11_BIND_SHADER_RESOURCE);
    textures[T_PREBLUR_VERT]   = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_PREBLUR_HORIZ]  = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_BEAM_DIST]      = MakeTexture(device.Get(), BEAM_W, BEAM_H, DXGI_FORMAT_R10G10B10A2_UNORM, srv_rtv);
    textures[T_ELECTRON_BEAMS] = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_BEAM_CONVERGENCE] = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_BLOOM_APPROX_H] = MakeTexture(device.Get(), BLOOM_W, BLOOM_H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_BLOOM_APPROX_V] = MakeTexture(device.Get(), BLOOM_W, BLOOM_H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_BLUR_VERT]      = MakeTexture(device.Get(), BLOOM_W, BLOOM_H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_BLUR_HORIZ]     = MakeTexture(device.Get(), BLOOM_W, BLOOM_H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_DEINTERLACE]    = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_FREEZE]         = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_PHOSPHOR_MASK]  = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16_UNORM, srv_rtv);
    textures[T_PHOSPHOR_BLUE]  = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16_UNORM, srv_rtv);
    textures[T_MASKED]         = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_BRIGHT]         = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_BLOOM_VERT]     = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_BLOOM_HORIZ]    = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM,
        D3D11_BIND_SHADER_RESOURCE | D3D11_BIND_RENDER_TARGET | D3D11_BIND_UNORDERED_ACCESS);
    textures[T_GEOMETRY]       = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    textures[T_FINAL]          = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R8G8B8A8_UNORM,
        D3D11_BIND_SHADER_RESOURCE | D3D11_BIND_RENDER_TARGET | D3D11_BIND_UNORDERED_ACCESS);
    textures[T_OUTPUT]         = MakeTexture(device.Get(), W, H, DXGI_FORMAT_R8G8B8A8_UNORM, srv_rtv);

    const float black[4] = { 0, 0, 0, 1 };
    for (Texture& texture : textures)
        if (texture.rtv)
            context->ClearRenderTargetView(texture.rtv.Get(), black);

    D3D11_SAMPLER_DESC sampler_desc = {};
    sampler_desc.Filter         = D3D11_FILTER_MIN_MAG_MIP_LINEAR;
    sampler_desc.AddressU       = D3D11_TEXTURE_ADDRESS_CLAMP;
    sampler_desc.AddressV       = D3D11_TEXTURE_ADDRESS_CLAMP;
    sampler_desc.AddressW       = D3D11_TEXTURE_ADDRESS_CLAMP;
    sampler_desc.ComparisonFunc = D3D11_COMPARISON_NEVER;
    sampler_desc.MaxLOD         = FLT_MAX;

    ComPtr<ID3D11SamplerState> sampler_clamp;
    Check(device->CreateSamplerState(&sampler_desc, &sampler_clamp), "CreateSamplerState clamp");

    sampler_desc.AddressV = D3D11_TEXTURE_ADDRESS_WRAP;
    ComPtr<ID3D11SamplerState> sampler_wrap_v;
    Check(device->CreateSamplerState(&sampler_desc, &sampler_wrap_v), "CreateSamplerState wrap-v");

    sampler_desc.AddressU = D3D11_TEXTURE_ADDRESS_BORDER;
    sampler_desc.AddressV = D3D11_TEXTURE_ADDRESS_BORDER;
    sampler_desc.BorderColor[0] = 0;
    sampler_desc.BorderColor[1] = 0;
    sampler_desc.BorderColor[2] = 0;
    sampler_desc.BorderColor[3] = 0;
    ComPtr<ID3D11SamplerState> sampler_border;
    Check(device->CreateSamplerState(&sampler_desc, &sampler_border), "CreateSamplerState border");

    ID3D11SamplerState* samplers[3] = { sampler_clamp.Get(), sampler_wrap_v.Get(), sampler_border.Get() };
    ID3D11UnorderedAccessView* uavs[2] = { textures[T_BLOOM_HORIZ].uav.Get(), textures[T_FINAL].uav.Get() };

    D3D11_BUFFER_DESC cb_desc = {};
    cb_desc.ByteWidth      = 16;
    cb_desc.Usage          = D3D11_USAGE_DEFAULT;
    cb_desc.BindFlags      = D3D11_BIND_CONSTANT_BUFFER;
    ComPtr<ID3D11Buffer> frame_cb;
    Check(device->CreateBuffer(&cb_desc, nullptr, &frame_cb), "CreateBuffer frame_count");

    const Pass passes[] = {
        { "BeamLookup", "F__calculateBeamDistsVS", "F__calculateBeamDistsPS", nullptr, T_BEAM_DIST, -1, false, 0, 0 },
        { "CachedBeams", "F__leanCachedBeamVS", "F__leanCachedBeamPS", nullptr, T_ELECTRON_BEAMS, -1, false, 0, 0 },
        { "BeamsConvergence", "F__PostProcessVS", "F__leanBeamsPS", nullptr, T_BEAM_CONVERGENCE, -1, true, 0, 0 },
        { "BloomApprox", "F__PostProcessVS", "F__leanApproxBloomPS", nullptr, T_BLOOM_APPROX_H, -1, true, 0, 0 },
        { "DiffusionVert", "F__blurVerticalVS", "F__blurVerticalPS", nullptr, T_BLUR_VERT, -1, true, 0, 0 },
        { "DiffusionHoriz", "F__blurHorizontalVS", "F__blurHorizontalPS", nullptr, T_BLUR_HORIZ, -1, true, 0, 0 },
        { "Deinterlace", "F__deinterlaceVS", "F__deinterlacePS", nullptr, T_DEINTERLACE, -1, true, 0, 0 },
        { "History", "F__freezeFrameVS", "F__freezeFramePS", nullptr, T_FREEZE, -1, false, 0, 0 },
        { "PhosphorLookup", "F__generatePhosphorMaskVS", "F__leanPhosphorPS", nullptr, T_PHOSPHOR_MASK, T_PHOSPHOR_BLUE, false, 0, 0 },
        { "Mask", "F__PostProcessVS", "F__leanMaskPS", nullptr, T_MASKED, -1, true, 0, 0 },
        { "Bright", "F__brightpassVS", "F__brightpassPS", nullptr, T_BRIGHT, -1, true, 0, 0 },
        { "BloomVert", "F__leanBloomVerticalVS", "F__leanBloomVerticalPS", nullptr, T_BLOOM_VERT, -1, true, 0, 0 },
        { "BloomComposite", "F__bloomHorizontalVS", "F__bloomHorizontalPS", nullptr, T_BLOOM_HORIZ, -1, true, 0, 0 },
        { "GeometryCache", "F__leanGeometryCacheVS", "F__geometryPS", nullptr, T_GEOMETRY, -1, false, 0, 0 },
        { "Output", "F__leanOutputVS", "F__leanOutputPS", nullptr, T_OUTPUT, -1, true, 0, 0 },
    };

    std::unordered_map<std::string, ComPtr<ID3D11VertexShader>>   vs_cache;
    std::unordered_map<std::string, ComPtr<ID3D11PixelShader>>    ps_cache;
    std::unordered_map<std::string, ComPtr<ID3D11ComputeShader>>  cs_cache;
    std::unordered_map<std::string, StageBindings>                vs_bindings;
    std::unordered_map<std::string, StageBindings>                ps_bindings;
    std::unordered_map<std::string, StageBindings>                cs_bindings;

    auto get_vs = [&](const char* entry) -> ID3D11VertexShader*
    {
        auto it = vs_cache.find(entry);
        if (it != vs_cache.end())
            return it->second.Get();
        ComPtr<ID3DBlob> blob = Compile(source, entry, "vs_5_0");
        ComPtr<ID3D11VertexShader> shader;
        Check(device->CreateVertexShader(blob->GetBufferPointer(), blob->GetBufferSize(), nullptr, &shader), entry);
        vs_bindings[entry] = Reflect(blob.Get(), textures, samplers, uavs);
        vs_cache[entry] = shader;
        return shader.Get();
    };
    auto get_ps = [&](const char* entry) -> ID3D11PixelShader*
    {
        auto it = ps_cache.find(entry);
        if (it != ps_cache.end())
            return it->second.Get();
        ComPtr<ID3DBlob> blob = Compile(source, entry, "ps_5_0");
        ComPtr<ID3D11PixelShader> shader;
        Check(device->CreatePixelShader(blob->GetBufferPointer(), blob->GetBufferSize(), nullptr, &shader), entry);
        ps_bindings[entry] = Reflect(blob.Get(), textures, samplers, uavs);
        ps_cache[entry] = shader;
        return shader.Get();
    };
    auto get_cs = [&](const char* entry) -> ID3D11ComputeShader*
    {
        auto it = cs_cache.find(entry);
        if (it != cs_cache.end())
            return it->second.Get();
        ComPtr<ID3DBlob> blob = Compile(source, entry, "cs_5_0");
        ComPtr<ID3D11ComputeShader> shader;
        Check(device->CreateComputeShader(blob->GetBufferPointer(), blob->GetBufferSize(), nullptr, &shader), entry);
        cs_bindings[entry] = Reflect(blob.Get(), textures, samplers, uavs);
        cs_cache[entry] = shader;
        return shader.Get();
    };

    // LeanCRT builds the phosphor mask one 1/64-wide vertical segment per frame.
    // Run 64 mask-only frames so the still has a complete mask instead of one strip.
    {
        ID3D11RenderTargetView* mask_rtvs[2] = {
            textures[T_PHOSPHOR_MASK].rtv.Get(),
            textures[T_PHOSPHOR_BLUE].rtv.Get()
        };
        context->OMSetRenderTargets(2, mask_rtvs, nullptr);

        D3D11_VIEWPORT viewport = {};
        viewport.Width    = static_cast<float>(W);
        viewport.Height   = static_cast<float>(H);
        viewport.MaxDepth = 1.0f;
        context->RSSetViewports(1, &viewport);
        context->IASetInputLayout(nullptr);
        context->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);

        ID3D11VertexShader* mask_vs = get_vs("F__generatePhosphorMaskVS");
        ID3D11PixelShader*  mask_ps = get_ps("F__leanPhosphorPS");
        context->VSSetShader(mask_vs, nullptr, 0);
        context->PSSetShader(mask_ps, nullptr, 0);

        ID3D11Buffer* mask_cb = frame_cb.Get();
        context->VSSetConstantBuffers(0, 1, &mask_cb);
        context->PSSetConstantBuffers(0, 1, &mask_cb);

        for (UINT frame_index = 0; frame_index < 64; ++frame_index)
        {
            UploadFrameCount(context.Get(), frame_cb.Get(), frame_index);
            context->Draw(4, 0);
        }
    }

    auto bind_graphics = [&](const StageBindings& bindings, bool pixel)
    {
        ID3D11ShaderResourceView* srvs[T_COUNT] = {};
        for (const auto& [slot, srv] : bindings.srvs)
            srvs[slot] = srv;
        ID3D11SamplerState* stage_samplers[3] = {};
        for (const auto& [slot, sampler] : bindings.samplers)
            stage_samplers[slot] = sampler;

        ID3D11Buffer* cb = frame_cb.Get();
        if (pixel)
        {
            context->PSSetShaderResources(0, T_COUNT, srvs);
            context->PSSetSamplers(0, 3, stage_samplers);
            context->PSSetConstantBuffers(0, 1, &cb);
        }
        else
        {
            context->VSSetShaderResources(0, T_COUNT, srvs);
            context->VSSetSamplers(0, 3, stage_samplers);
            context->VSSetConstantBuffers(0, 1, &cb);
        }
    };

    const float clear[4] = { 0, 0, 0, 1 };
    // BeamDist is rebuilt every 60 frames (or while the ReShade overlay is up).
    // Use a multiple of 60 so a single-frame still gets a populated LUT.
    UINT frame = 60;
    UploadFrameCount(context.Get(), frame_cb.Get(), frame);

    PrintAverage(device.Get(), context.Get(), textures[T_INPUT], "Input");

    for (const Pass& pass : passes)
    {
        std::cout << "Pass: " << pass.name << "\n";

        if (pass.cs)
        {
            context->OMSetRenderTargets(0, nullptr, nullptr);
            ID3D11ComputeShader* cs = get_cs(pass.cs);
            context->CSSetShader(cs, nullptr, 0);

            ID3D11UnorderedAccessView* pass_uavs[2] = {};
            for (const auto& [slot, uav] : cs_bindings[pass.cs].uavs)
                pass_uavs[slot] = uav;
            context->CSSetUnorderedAccessViews(0, 2, pass_uavs, nullptr);

            ID3D11ShaderResourceView* srvs[T_COUNT] = {};
            for (const auto& [slot, srv] : cs_bindings[pass.cs].srvs)
                srvs[slot] = srv;
            ID3D11SamplerState* pass_samplers[3] = {};
            for (const auto& [slot, sampler] : cs_bindings[pass.cs].samplers)
                pass_samplers[slot] = sampler;
            context->CSSetShaderResources(0, T_COUNT, srvs);
            context->CSSetSamplers(0, 3, pass_samplers);
            ID3D11Buffer* cb = frame_cb.Get();
            context->CSSetConstantBuffers(0, 1, &cb);

            context->Dispatch(pass.dx, pass.dy, 1);

            ID3D11UnorderedAccessView* no_uavs[2] = {};
            context->CSSetUnorderedAccessViews(0, 2, no_uavs, nullptr);
            PrintAverage(device.Get(), context.Get(), textures[T_BLOOM_HORIZ], "BloomHoriz");
            PrintAverage(device.Get(), context.Get(), textures[T_FINAL], "Final");
            SaveTextureBmp(device.Get(), context.Get(), textures[T_FINAL], "final.bmp");
            continue;
        }

        ID3D11RenderTargetView* rtvs[2] = {};
        rtvs[0] = textures[pass.rt0].rtv.Get();
        if (pass.rt1 >= 0)
            rtvs[1] = textures[pass.rt1].rtv.Get();
        context->OMSetRenderTargets(pass.rt1 >= 0 ? 2 : 1, rtvs, nullptr);

        if (pass.clear)
            for (int i = 0; i < (pass.rt1 >= 0 ? 2 : 1); ++i)
                context->ClearRenderTargetView(rtvs[i], clear);

        D3D11_VIEWPORT viewport = {};
        viewport.Width    = static_cast<float>(textures[pass.rt0].w);
        viewport.Height   = static_cast<float>(textures[pass.rt0].h);
        viewport.MaxDepth = 1.0f;
        context->RSSetViewports(1, &viewport);

        ID3D11VertexShader* vs = get_vs(pass.vs);
        ID3D11PixelShader*  ps = get_ps(pass.ps);
        context->IASetInputLayout(nullptr);
        context->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);
        context->VSSetShader(vs, nullptr, 0);
        context->PSSetShader(ps, nullptr, 0);
        bind_graphics(vs_bindings[pass.vs], false);
        bind_graphics(ps_bindings[pass.ps], true);
        context->Draw(4, 0);

        PrintAverage(device.Get(), context.Get(), textures[pass.rt0], pass.name);
        if (pass.rt1 >= 0)
            PrintAverage(device.Get(), context.Get(), textures[pass.rt1], "PhosphorBlue");
        if (std::strcmp(pass.name, "Mask") == 0)
            PrintRow(device.Get(), context.Get(), textures[T_MASKED], 500, 780, 800, "Masked");
        if (std::strcmp(pass.name, "PhosphorLookup") == 0)
        {
            PrintRow(device.Get(), context.Get(), textures[T_PHOSPHOR_MASK], 500, 780, 800, "PhosphorMask");
            PrintRow(device.Get(), context.Get(), textures[T_BEAM_CONVERGENCE], 500, 780, 800, "Beams");
        }
        if (std::strcmp(pass.name, "Output") == 0)
            SaveTextureBmp(device.Get(), context.Get(), textures[T_OUTPUT], "output.bmp");
    }

    context->OMSetRenderTargets(0, nullptr, nullptr);

    // Flat-output blit: convert the RGBA16 raster composite to the RGBA8 output.
    // CopyResource cannot change formats, so use a one-quad pixel shader.
    {
        static const char* blit_source =
            "Texture2D<float4> source_texture : register(t18);\n"
            "SamplerState source_sampler : register(s0);\n"
            "float4 main(float4 pos : SV_POSITION, float2 uv : TEXCOORD0) : SV_TARGET\n"
            "{ return float4(source_texture.Sample(source_sampler, uv).rgb, 1.0); }\n";

        ComPtr<ID3DBlob> blit_blob = Compile(blit_source, "main", "ps_5_0");
        ComPtr<ID3D11PixelShader> blit_ps;
        Check(device->CreatePixelShader(blit_blob->GetBufferPointer(), blit_blob->GetBufferSize(), nullptr, &blit_ps), "blit ps");

        ID3D11RenderTargetView* out_rtv = textures[T_OUTPUT].rtv.Get();
        context->OMSetRenderTargets(1, &out_rtv, nullptr);
        context->ClearRenderTargetView(out_rtv, clear);

        D3D11_VIEWPORT viewport = {};
        viewport.Width    = static_cast<float>(W);
        viewport.Height   = static_cast<float>(H);
        viewport.MaxDepth = 1.0f;
        context->RSSetViewports(1, &viewport);
        context->IASetInputLayout(nullptr);
        context->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);

        context->VSSetShader(get_vs("F__PostProcessVS"), nullptr, 0);
        context->PSSetShader(blit_ps.Get(), nullptr, 0);

        ID3D11ShaderResourceView* blit_srvs[T_COUNT] = {};
        blit_srvs[18] = textures[T_BLOOM_HORIZ].srv.Get();
        ID3D11SamplerState* blit_sampler = sampler_clamp.Get();
        context->PSSetShaderResources(0, T_COUNT, blit_srvs);
        context->PSSetSamplers(0, 1, &blit_sampler);

        context->Draw(4, 0);
        SaveTextureBmp(device.Get(), context.Get(), textures[T_OUTPUT], "flat.bmp");
    }

    D3D11_TEXTURE2D_DESC staging_desc = {};
    textures[T_OUTPUT].tex->GetDesc(&staging_desc);
    staging_desc.Usage          = D3D11_USAGE_STAGING;
    staging_desc.BindFlags      = 0;
    staging_desc.CPUAccessFlags = D3D11_CPU_ACCESS_READ;
    staging_desc.MiscFlags      = 0;

    ComPtr<ID3D11Texture2D> staging;
    Check(device->CreateTexture2D(&staging_desc, nullptr, &staging), "CreateTexture2D staging");
    context->CopyResource(staging.Get(), textures[T_OUTPUT].tex.Get());

    D3D11_MAPPED_SUBRESOURCE mapped = {};
    Check(context->Map(staging.Get(), 0, D3D11_MAP_READ, 0, &mapped), "Map staging");

    size_t non_black = 0;
    for (UINT y = 0; y < H; ++y)
    {
        const uint8_t* row = static_cast<const uint8_t*>(mapped.pData) + static_cast<size_t>(y) * mapped.RowPitch;
        for (UINT x = 0; x < W; ++x)
        {
            if (row[x * 4 + 0] > 8 || row[x * 4 + 1] > 8 || row[x * 4 + 2] > 8)
                ++non_black;
        }
    }

    WriteBmp("native-spike.bmp", static_cast<const uint8_t*>(mapped.pData), W, H, mapped.RowPitch);
    context->Unmap(staging.Get(), 0);

    std::cout << "Non-black pixels: " << non_black << " / " << (static_cast<size_t>(W) * H) << "\n";
    return non_black > 1000 ? 0 : 2;
}
