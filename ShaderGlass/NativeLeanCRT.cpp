/*
LeanGlass native LeanCRT renderer
Copyright (C) 2026 MakiNoAtorie
GNU General Public License v3.0
*/

#include "pch.h"
#include "NativeLeanCRT.h"

#include <cfloat>
#include <cstring>
#include <cwchar>
#include <filesystem>
#include <fstream>
#include <iterator>
#include <memory>

using Microsoft::WRL::ComPtr;

namespace
{
constexpr UINT W = 1920;
constexpr UINT H = 1080;
constexpr UINT BLOOM_W = 480;
constexpr UINT BLOOM_H = 270;
constexpr UINT BEAM_W = 1024;
constexpr UINT BEAM_H = 120;

// Must cover the generated HLSL's _Globals block. The current raster
// permutation declares frame_count plus four help/version ints (20 bytes);
// keep 32 so future members cannot read past the buffer.
struct FrameConstants
{
    UINT frame_count;
    UINT overlay_active;
    UINT version_2_1_0;
    UINT basic_setup_help;
    UINT content_box_help;
    UINT padding[3];
};

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

std::string ReadText(const std::wstring& path)
{
    std::ifstream file(std::filesystem::path(path), std::ios::binary);
    if (!file)
        return {};
    return std::string(std::istreambuf_iterator<char>(file), std::istreambuf_iterator<char>());
}

std::wstring HResultText(HRESULT hr)
{
    wchar_t text[64] = {};
    swprintf_s(text, L"0x%08X", static_cast<unsigned>(hr));
    return text;
}
} // namespace

NativeLeanCRT::Texture NativeLeanCRT::CreateTexture(UINT w, UINT h, DXGI_FORMAT format, UINT bind)
{
    Texture texture;
    texture.w = w;
    texture.h = h;

    D3D11_TEXTURE2D_DESC desc = {};
    desc.Width            = w;
    desc.Height           = h;
    desc.MipLevels        = 1;
    desc.ArraySize        = 1;
    desc.Format           = format;
    desc.SampleDesc.Count = 1;
    desc.Usage            = D3D11_USAGE_DEFAULT;
    desc.BindFlags        = bind;

    HRESULT hr = m_device->CreateTexture2D(&desc, nullptr, &texture.tex);
    if (FAILED(hr))
    {
        m_error = L"CreateTexture2D failed: " + HResultText(hr);
        return {};
    }

    if (bind & D3D11_BIND_SHADER_RESOURCE)
    {
        D3D11_SHADER_RESOURCE_VIEW_DESC srv = {};
        srv.Format              = format;
        srv.ViewDimension       = D3D11_SRV_DIMENSION_TEXTURE2D;
        srv.Texture2D.MipLevels = 1;
        hr = m_device->CreateShaderResourceView(texture.tex.Get(), &srv, &texture.srv);
        if (FAILED(hr))
        {
            m_error = L"CreateShaderResourceView failed: " + HResultText(hr);
            return {};
        }
    }
    if (bind & D3D11_BIND_RENDER_TARGET)
    {
        D3D11_RENDER_TARGET_VIEW_DESC rtv = {};
        rtv.Format        = format;
        rtv.ViewDimension = D3D11_RTV_DIMENSION_TEXTURE2D;
        hr = m_device->CreateRenderTargetView(texture.tex.Get(), &rtv, &texture.rtv);
        if (FAILED(hr))
        {
            m_error = L"CreateRenderTargetView failed: " + HResultText(hr);
            return {};
        }
    }

    return texture;
}

NativeLeanCRT::Bindings NativeLeanCRT::Reflect(ID3DBlob* blob)
{
    Bindings out;

    ComPtr<ID3D11ShaderReflection> reflection;
    if (FAILED(D3DReflect(blob->GetBufferPointer(), blob->GetBufferSize(), IID_ID3D11ShaderReflection, &reflection)))
        return out;

    D3D11_SHADER_DESC shader = {};
    if (FAILED(reflection->GetDesc(&shader)))
        return out;

    for (UINT i = 0; i < shader.BoundResources; ++i)
    {
        D3D11_SHADER_INPUT_BIND_DESC bind = {};
        if (FAILED(reflection->GetResourceBindingDesc(i, &bind)))
            continue;

        switch (bind.Type)
        {
        case D3D_SIT_TEXTURE:
            if (bind.BindPoint < T_COUNT)
                out.srvs.push_back(bind.BindPoint);
            break;
        case D3D_SIT_SAMPLER:
            if (bind.BindPoint < 3)
                out.samplers.push_back(bind.BindPoint);
            break;
        case D3D_SIT_CBUFFER:
            out.cbuffer = true;
            break;
        default:
            break;
        }
    }

    return out;
}

ComPtr<ID3D11VertexShader> NativeLeanCRT::GetVS(const char* entry, std::wstring& error)
{
    auto it = m_vs.find(entry);
    if (it != m_vs.end())
        return it->second;

    ComPtr<ID3DBlob> blob;
    ComPtr<ID3DBlob> errors;
    HRESULT hr = D3DCompile(m_source.data(), m_source.size(), "LeanCRT.hlsl", nullptr, nullptr,
        entry, "vs_5_0", D3DCOMPILE_ENABLE_STRICTNESS, 0, &blob, &errors);
    if (FAILED(hr))
    {
        error = L"Compiling " + std::wstring(entry, entry + std::strlen(entry)) + L" failed: " + HResultText(hr);
        if (errors)
            error += L"\n" + std::wstring(static_cast<const char*>(errors->GetBufferPointer()),
                static_cast<const char*>(errors->GetBufferPointer()) + errors->GetBufferSize());
        return nullptr;
    }

    ComPtr<ID3D11VertexShader> shader;
    hr = m_device->CreateVertexShader(blob->GetBufferPointer(), blob->GetBufferSize(), nullptr, &shader);
    if (FAILED(hr))
    {
        error = L"CreateVertexShader failed: " + HResultText(hr);
        return nullptr;
    }

    m_vs_bind[entry] = Reflect(blob.Get());
    m_vs[entry] = shader;
    return shader;
}

ComPtr<ID3D11PixelShader> NativeLeanCRT::GetPS(const char* entry, std::wstring& error)
{
    auto it = m_ps.find(entry);
    if (it != m_ps.end())
        return it->second;

    ComPtr<ID3DBlob> blob;
    ComPtr<ID3DBlob> errors;
    HRESULT hr = D3DCompile(m_source.data(), m_source.size(), "LeanCRT.hlsl", nullptr, nullptr,
        entry, "ps_5_0", D3DCOMPILE_ENABLE_STRICTNESS, 0, &blob, &errors);
    if (FAILED(hr))
    {
        error = L"Compiling " + std::wstring(entry, entry + std::strlen(entry)) + L" failed: " + HResultText(hr);
        if (errors)
            error += L"\n" + std::wstring(static_cast<const char*>(errors->GetBufferPointer()),
                static_cast<const char*>(errors->GetBufferPointer()) + errors->GetBufferSize());
        return nullptr;
    }

    ComPtr<ID3D11PixelShader> shader;
    hr = m_device->CreatePixelShader(blob->GetBufferPointer(), blob->GetBufferSize(), nullptr, &shader);
    if (FAILED(hr))
    {
        error = L"CreatePixelShader failed: " + HResultText(hr);
        return nullptr;
    }

    m_ps_bind[entry] = Reflect(blob.Get());
    m_ps[entry] = shader;
    return shader;
}

void NativeLeanCRT::BindGraphics(const Bindings& bindings, bool pixel)
{
    ID3D11ShaderResourceView* srvs[T_COUNT] = {};
    for (UINT slot : bindings.srvs)
        if (slot < T_COUNT)
            srvs[slot] = m_textures[slot].srv.Get();

    ID3D11SamplerState* samplers[3] = {
        m_sampler_clamp.Get(),
        m_sampler_wrap_v.Get(),
        m_sampler_border.Get()
    };

    ID3D11Buffer* cb = m_frame_cb.Get();
    if (pixel)
    {
        m_context->PSSetShaderResources(0, T_COUNT, srvs);
        m_context->PSSetSamplers(0, 3, samplers);
        m_context->PSSetConstantBuffers(0, 1, &cb);
    }
    else
    {
        m_context->VSSetShaderResources(0, T_COUNT, srvs);
        m_context->VSSetSamplers(0, 3, samplers);
        m_context->VSSetConstantBuffers(0, 1, &cb);
    }
}

bool NativeLeanCRT::Initialize(ID3D11Device* device, ID3D11DeviceContext* context, const std::wstring& hlslPath, std::wstring& error)
{
    m_ready = false;
    if (!device || !context)
    {
        error = L"Native LeanCRT needs a valid D3D11 device and context.";
        return false;
    }

    m_device  = device;
    m_context = context;
    m_error.clear();
    m_source  = ReadText(hlslPath);
    if (m_source.empty())
    {
        error = L"Could not read " + hlslPath;
        return false;
    }

    const UINT srv_rtv = D3D11_BIND_SHADER_RESOURCE | D3D11_BIND_RENDER_TARGET;
    m_textures[T_DEPTH]          = CreateTexture(1, 1, DXGI_FORMAT_R8G8B8A8_UNORM, D3D11_BIND_SHADER_RESOURCE);
    m_textures[T_BEAM_DIST]      = CreateTexture(BEAM_W, BEAM_H, DXGI_FORMAT_R10G10B10A2_UNORM, srv_rtv);
    m_textures[T_ELECTRON_BEAMS] = CreateTexture(W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_BEAM_CONVERGENCE] = CreateTexture(W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_BLOOM_APPROX_H] = CreateTexture(BLOOM_W, BLOOM_H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_BLOOM_APPROX_V] = CreateTexture(BLOOM_W, BLOOM_H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_BLUR_VERT]      = CreateTexture(BLOOM_W, BLOOM_H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_BLUR_HORIZ]     = CreateTexture(BLOOM_W, BLOOM_H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_DEINTERLACE]    = CreateTexture(W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_FREEZE]         = CreateTexture(W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_PHOSPHOR_MASK]  = CreateTexture(W, H, DXGI_FORMAT_R16G16_UNORM, srv_rtv);
    m_textures[T_PHOSPHOR_BLUE]  = CreateTexture(W, H, DXGI_FORMAT_R16_UNORM, srv_rtv);
    m_textures[T_MASKED]         = CreateTexture(W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_BRIGHT]         = CreateTexture(W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_BLOOM_VERT]     = CreateTexture(W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);
    m_textures[T_BLOOM_HORIZ]    = CreateTexture(W, H, DXGI_FORMAT_R16G16B16A16_UNORM, srv_rtv);

    if (!m_error.empty())
    {
        error = L"Native LeanCRT texture creation failed: " + m_error;
        return false;
    }

    const float black[4] = { 0, 0, 0, 1 };
    for (Texture& texture : m_textures)
        if (texture.rtv)
            m_context->ClearRenderTargetView(texture.rtv.Get(), black);

    D3D11_SAMPLER_DESC sampler_desc = {};
    sampler_desc.Filter         = D3D11_FILTER_MIN_MAG_MIP_LINEAR;
    sampler_desc.AddressU       = D3D11_TEXTURE_ADDRESS_CLAMP;
    sampler_desc.AddressV       = D3D11_TEXTURE_ADDRESS_CLAMP;
    sampler_desc.AddressW       = D3D11_TEXTURE_ADDRESS_CLAMP;
    sampler_desc.ComparisonFunc = D3D11_COMPARISON_NEVER;
    sampler_desc.MaxLOD         = FLT_MAX;
    HRESULT hr = m_device->CreateSamplerState(&sampler_desc, &m_sampler_clamp);
    if (FAILED(hr))
    {
        error = L"CreateSamplerState failed: " + HResultText(hr);
        return false;
    }

    sampler_desc.AddressV = D3D11_TEXTURE_ADDRESS_WRAP;
    hr = m_device->CreateSamplerState(&sampler_desc, &m_sampler_wrap_v);
    if (FAILED(hr))
    {
        error = L"CreateSamplerState failed: " + HResultText(hr);
        return false;
    }

    sampler_desc.AddressU = D3D11_TEXTURE_ADDRESS_BORDER;
    sampler_desc.AddressV = D3D11_TEXTURE_ADDRESS_BORDER;
    sampler_desc.BorderColor[0] = 0;
    sampler_desc.BorderColor[1] = 0;
    sampler_desc.BorderColor[2] = 0;
    sampler_desc.BorderColor[3] = 0;
    hr = m_device->CreateSamplerState(&sampler_desc, &m_sampler_border);
    if (FAILED(hr))
    {
        error = L"CreateSamplerState failed: " + HResultText(hr);
        return false;
    }

    D3D11_RASTERIZER_DESC raster_desc = {};
    raster_desc.FillMode              = D3D11_FILL_SOLID;
    raster_desc.CullMode              = D3D11_CULL_NONE;
    raster_desc.DepthClipEnable       = TRUE;
    raster_desc.ScissorEnable         = FALSE;
    hr = m_device->CreateRasterizerState(&raster_desc, &m_rasterizer);
    if (FAILED(hr))
    {
        error = L"CreateRasterizerState failed: " + HResultText(hr);
        return false;
    }

    D3D11_BUFFER_DESC cb_desc = {};
    cb_desc.ByteWidth = sizeof(FrameConstants);
    cb_desc.Usage     = D3D11_USAGE_DEFAULT;
    cb_desc.BindFlags = D3D11_BIND_CONSTANT_BUFFER;
    hr = m_device->CreateBuffer(&cb_desc, nullptr, &m_frame_cb);
    if (FAILED(hr))
    {
        error = L"CreateBuffer failed: " + HResultText(hr);
        return false;
    }

    const char* blit_source =
        "Texture2D<float4> source_texture : register(t18);\n"
        "SamplerState source_sampler : register(s0);\n"
        "float4 main(float4 pos : SV_POSITION, float2 uv : TEXCOORD0) : SV_TARGET\n"
        "{\n"
        "    float3 c = saturate(source_texture.Sample(source_sampler, uv).rgb);\n"
        "    return float4(pow(c, float3(1.0 / 2.2, 1.0 / 2.2, 1.0 / 2.2)), 1.0);\n"
        "}\n";

    ComPtr<ID3DBlob> blit_blob;
    ComPtr<ID3DBlob> blit_errors;
    hr = D3DCompile(blit_source, std::strlen(blit_source), "LeanCRTBlit.hlsl", nullptr, nullptr,
        "main", "ps_5_0", D3DCOMPILE_ENABLE_STRICTNESS, 0, &blit_blob, &blit_errors);
    if (FAILED(hr) || !blit_blob)
    {
        error = L"Blit shader compilation failed: " + HResultText(hr);
        if (blit_errors)
            error += L"\n" + std::wstring(static_cast<const char*>(blit_errors->GetBufferPointer()),
                static_cast<const char*>(blit_errors->GetBufferPointer()) + blit_errors->GetBufferSize());
        return false;
    }

    hr = m_device->CreatePixelShader(blit_blob->GetBufferPointer(), blit_blob->GetBufferSize(), nullptr, &m_blit_ps);
    if (FAILED(hr))
    {
        error = L"Blit pixel shader creation failed: " + HResultText(hr);
        return false;
    }

    const char* bypass_source =
        "Texture2D<float4> source_texture : register(t0);\n"
        "SamplerState source_sampler : register(s0);\n"
        "float4 main(float4 pos : SV_POSITION, float2 uv : TEXCOORD0) : SV_TARGET\n"
        "{ return float4(source_texture.Sample(source_sampler, uv).rgb, 1.0); }\n";

    ComPtr<ID3DBlob> bypass_blob;
    hr = D3DCompile(bypass_source, std::strlen(bypass_source), "LeanCRTBypass.hlsl", nullptr, nullptr,
        "main", "ps_5_0", D3DCOMPILE_ENABLE_STRICTNESS, 0, &bypass_blob, &blit_errors);
    if (FAILED(hr) || !bypass_blob)
    {
        error = L"Bypass shader compilation failed: " + HResultText(hr);
        if (blit_errors)
            error += L"\n" + std::wstring(static_cast<const char*>(blit_errors->GetBufferPointer()),
                static_cast<const char*>(blit_errors->GetBufferPointer()) + blit_errors->GetBufferSize());
        return false;
    }

    hr = m_device->CreatePixelShader(bypass_blob->GetBufferPointer(), bypass_blob->GetBufferSize(), nullptr, &m_bypass_ps);
    if (FAILED(hr))
    {
        error = L"Bypass pixel shader creation failed: " + HResultText(hr);
        return false;
    }

    // Compile everything once so a later frame cannot stall on a missing entry point.
    const char* vs_entries[] = {
        "F__calculateBeamDistsVS", "F__leanCachedBeamVS", "F__PostProcessVS", "F__blurVerticalVS",
        "F__blurHorizontalVS", "F__deinterlaceVS", "F__freezeFrameVS", "F__generatePhosphorMaskVS",
        "F__brightpassVS", "F__leanBloomVerticalVS", "F__bloomHorizontalVS", "F__leanOutputVS",
    };
    const char* ps_entries[] = {
        "F__calculateBeamDistsPS", "F__leanCachedBeamPS", "F__leanBeamsPS", "F__leanApproxBloomPS",
        "F__blurVerticalPS", "F__blurHorizontalPS", "F__deinterlacePS", "F__freezeFramePS",
        "F__leanPhosphorPS", "F__leanMaskPS", "F__brightpassPS", "F__leanBloomVerticalPS",
        "F__bloomHorizontalPS", "F__leanOutputPS",
    };

    for (const char* entry : vs_entries)
        if (!GetVS(entry, error))
            return false;
    for (const char* entry : ps_entries)
        if (!GetPS(entry, error))
            return false;

    RunMaskPrewarm();
    if (!m_error.empty())
    {
        error = m_error;
        return false;
    }

    m_frame = 60;
    m_ready = true;
    return true;
}

void NativeLeanCRT::RunMaskPrewarm()
{
    ID3D11RenderTargetView* rtvs[2] = {
        m_textures[T_PHOSPHOR_MASK].rtv.Get(),
        m_textures[T_PHOSPHOR_BLUE].rtv.Get()
    };
    m_context->OMSetRenderTargets(2, rtvs, nullptr);

    D3D11_VIEWPORT viewport = {};
    viewport.Width    = static_cast<float>(W);
    viewport.Height   = static_cast<float>(H);
    viewport.MaxDepth = 1.0f;
    m_context->RSSetViewports(1, &viewport);
    m_context->IASetInputLayout(nullptr);
    m_context->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);

    std::wstring error;
    ComPtr<ID3D11VertexShader> vs = GetVS("F__generatePhosphorMaskVS", error);
    ComPtr<ID3D11PixelShader>  ps = GetPS("F__leanPhosphorPS", error);
    if (!vs || !ps)
    {
        m_error = error;
        return;
    }

    m_context->VSSetShader(vs.Get(), nullptr, 0);
    m_context->PSSetShader(ps.Get(), nullptr, 0);

    ID3D11Buffer* cb = m_frame_cb.Get();
    m_context->VSSetConstantBuffers(0, 1, &cb);
    m_context->PSSetConstantBuffers(0, 1, &cb);

    for (UINT frame = 0; frame < 64; ++frame)
    {
        FrameConstants constants = {};
        constants.frame_count = frame;
        m_context->UpdateSubresource(m_frame_cb.Get(), 0, nullptr, &constants, 0, 0);
        m_context->Draw(4, 0);
    }
}

void NativeLeanCRT::Render(ID3D11ShaderResourceView* input, ID3D11RenderTargetView* output, UINT outputWidth, UINT outputHeight)
{
    if (!m_ready || !input || !output)
        return;

    if (!m_enabled.load(std::memory_order_relaxed))
    {
        RenderBypass(input, output, outputWidth, outputHeight);
        return;
    }

    m_textures[T_INPUT].srv = input;
    const UINT frame = m_frame++;
    FrameConstants constants = {};
    constants.frame_count = frame;
    m_context->UpdateSubresource(m_frame_cb.Get(), 0, nullptr, &constants, 0, 0);

    m_context->OMSetBlendState(nullptr, nullptr, 0xFFFFFFFF);
    m_context->OMSetDepthStencilState(nullptr, 0);
    m_context->RSSetState(m_rasterizer.Get());

    static const Pass passes[] = {
        { "BeamLookup", "F__calculateBeamDistsVS", "F__calculateBeamDistsPS", T_BEAM_DIST, -1, false },
        { "CachedBeams", "F__leanCachedBeamVS", "F__leanCachedBeamPS", T_ELECTRON_BEAMS, -1, false },
        { "BeamsConvergence", "F__PostProcessVS", "F__leanBeamsPS", T_BEAM_CONVERGENCE, -1, true },
        { "BloomApprox", "F__PostProcessVS", "F__leanApproxBloomPS", T_BLOOM_APPROX_H, -1, true },
        { "DiffusionVert", "F__blurVerticalVS", "F__blurVerticalPS", T_BLUR_VERT, -1, true },
        { "DiffusionHoriz", "F__blurHorizontalVS", "F__blurHorizontalPS", T_BLUR_HORIZ, -1, true },
        { "Deinterlace", "F__deinterlaceVS", "F__deinterlacePS", T_DEINTERLACE, -1, true },
        { "History", "F__freezeFrameVS", "F__freezeFramePS", T_FREEZE, -1, false },
        { "PhosphorLookup", "F__generatePhosphorMaskVS", "F__leanPhosphorPS", T_PHOSPHOR_MASK, T_PHOSPHOR_BLUE, false },
        { "Mask", "F__PostProcessVS", "F__leanMaskPS", T_MASKED, -1, true },
        { "Bright", "F__brightpassVS", "F__brightpassPS", T_BRIGHT, -1, true },
        { "BloomVert", "F__leanBloomVerticalVS", "F__leanBloomVerticalPS", T_BLOOM_VERT, -1, true },
        { "BloomComposite", "F__bloomHorizontalVS", "F__bloomHorizontalPS", T_BLOOM_HORIZ, -1, true },
    };

    const float black[4] = { 0, 0, 0, 1 };
    for (const Pass& pass : passes)
    {
        std::wstring error;
        ComPtr<ID3D11VertexShader> vs = GetVS(pass.vs, error);
        ComPtr<ID3D11PixelShader>  ps = GetPS(pass.ps, error);
        if (!vs || !ps)
            return;

        ID3D11RenderTargetView* rtvs[2] = { m_textures[pass.rt].rtv.Get(), nullptr };
        UINT rtv_count = 1;
        if (pass.rt1 >= 0)
        {
            rtvs[1] = m_textures[pass.rt1].rtv.Get();
            rtv_count = 2;
        }
        m_context->OMSetRenderTargets(rtv_count, rtvs, nullptr);
        if (pass.clear)
            for (UINT i = 0; i < rtv_count; ++i)
                m_context->ClearRenderTargetView(rtvs[i], black);

        D3D11_VIEWPORT viewport = {};
        viewport.Width    = static_cast<float>(m_textures[pass.rt].w);
        viewport.Height   = static_cast<float>(m_textures[pass.rt].h);
        viewport.MaxDepth = 1.0f;
        m_context->RSSetViewports(1, &viewport);
        m_context->IASetInputLayout(nullptr);
        m_context->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);
        m_context->VSSetShader(vs.Get(), nullptr, 0);
        m_context->PSSetShader(ps.Get(), nullptr, 0);
        BindGraphics(m_vs_bind[pass.vs], false);
        BindGraphics(m_ps_bind[pass.ps], true);
        m_context->Draw(4, 0);
    }

    // Final output: Arcade runs LeanCRT's real Output pass so the geometry
    // uniforms bend the image. The straight presets keep the temporary blit.
    ID3D11RenderTargetView* backbuffer = output;
    m_context->OMSetRenderTargets(1, &backbuffer, nullptr);

    D3D11_VIEWPORT viewport = {};
    viewport.Width    = static_cast<float>(outputWidth);
    viewport.Height   = static_cast<float>(outputHeight);
    viewport.MaxDepth = 1.0f;
    m_context->RSSetViewports(1, &viewport);
    m_context->IASetInputLayout(nullptr);
    m_context->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);

    std::wstring error;
    bool         rendered = false;
    if (m_outputPass)
    {
        ComPtr<ID3D11VertexShader> outputVs = GetVS("F__leanOutputVS", error);
        ComPtr<ID3D11PixelShader>  outputPs = GetPS("F__leanOutputPS", error);
        if (outputVs && outputPs)
        {
            m_context->VSSetShader(outputVs.Get(), nullptr, 0);
            m_context->PSSetShader(outputPs.Get(), nullptr, 0);
            BindGraphics(m_vs_bind["F__leanOutputVS"], false);
            BindGraphics(m_ps_bind["F__leanOutputPS"], true);
            m_context->Draw(4, 0);
            rendered = true;
        }
    }

    if (!rendered)
    {
        ComPtr<ID3D11VertexShader> vs = GetVS("F__PostProcessVS", error);
        if (!vs || !m_blit_ps)
            return;

        m_context->VSSetShader(vs.Get(), nullptr, 0);
        m_context->PSSetShader(m_blit_ps.Get(), nullptr, 0);

        ID3D11ShaderResourceView* srvs[T_COUNT] = {};
        srvs[18] = m_textures[T_BLOOM_HORIZ].srv.Get();
        ID3D11SamplerState* sampler = m_sampler_clamp.Get();
        m_context->PSSetShaderResources(0, T_COUNT, srvs);
        m_context->PSSetSamplers(0, 1, &sampler);
        m_context->Draw(4, 0);
    }

    // Leave no RTV/SRV references on the context. ResizeBuffers fails while the
    // back buffer or intermediate views are still bound.
    ID3D11RenderTargetView* null_rtv = nullptr;
    m_context->OMSetRenderTargets(1, &null_rtv, nullptr);
    ID3D11ShaderResourceView* null_srvs[T_COUNT] = {};
    m_context->PSSetShaderResources(0, T_COUNT, null_srvs);
    m_context->VSSetShaderResources(0, T_COUNT, null_srvs);
    ID3D11SamplerState* null_samplers[3] = {};
    m_context->PSSetSamplers(0, 3, null_samplers);
    m_context->VSSetSamplers(0, 3, null_samplers);

    // Do not keep the capture texture alive between frames.
    m_textures[T_INPUT].srv = nullptr;
}

void NativeLeanCRT::RenderBypass(ID3D11ShaderResourceView* input, ID3D11RenderTargetView* output, UINT outputWidth, UINT outputHeight)
{
    ID3D11RenderTargetView* backbuffer = output;
    m_context->OMSetRenderTargets(1, &backbuffer, nullptr);

    D3D11_VIEWPORT viewport = {};
    viewport.Width    = static_cast<float>(outputWidth);
    viewport.Height   = static_cast<float>(outputHeight);
    viewport.MaxDepth = 1.0f;
    m_context->RSSetViewports(1, &viewport);
    m_context->IASetInputLayout(nullptr);
    m_context->IASetPrimitiveTopology(D3D11_PRIMITIVE_TOPOLOGY_TRIANGLESTRIP);
    m_context->OMSetBlendState(nullptr, nullptr, 0xFFFFFFFF);
    m_context->OMSetDepthStencilState(nullptr, 0);
    m_context->RSSetState(m_rasterizer.Get());

    std::wstring error;
    ComPtr<ID3D11VertexShader> vs = GetVS("F__PostProcessVS", error);
    if (!vs || !m_bypass_ps)
        return;

    m_context->VSSetShader(vs.Get(), nullptr, 0);
    m_context->PSSetShader(m_bypass_ps.Get(), nullptr, 0);

    ID3D11ShaderResourceView* srvs[T_COUNT] = {};
    srvs[T_INPUT] = input;
    ID3D11SamplerState* sampler = m_sampler_clamp.Get();
    m_context->PSSetShaderResources(0, T_COUNT, srvs);
    m_context->PSSetSamplers(0, 1, &sampler);
    m_context->Draw(4, 0);

    ID3D11RenderTargetView* null_rtv = nullptr;
    m_context->OMSetRenderTargets(1, &null_rtv, nullptr);
    ID3D11ShaderResourceView* null_srvs[T_COUNT] = {};
    m_context->PSSetShaderResources(0, T_COUNT, null_srvs);
    m_context->VSSetShaderResources(0, T_COUNT, null_srvs);
    ID3D11SamplerState* null_samplers[3] = {};
    m_context->PSSetSamplers(0, 3, null_samplers);
    m_context->VSSetSamplers(0, 3, null_samplers);
}

void NativeLeanCRT::Shutdown()
{
    m_ready = false;
    for (Texture& texture : m_textures)
        texture = {};
    m_vs.clear();
    m_ps.clear();
    m_vs_bind.clear();
    m_ps_bind.clear();
    m_blit_ps = nullptr;
    m_frame_cb = nullptr;
    m_sampler_clamp = nullptr;
    m_context = nullptr;
    m_device = nullptr;
}
