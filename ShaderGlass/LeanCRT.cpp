/*
LeanGlass: LeanCRT integration for ShaderGlass
Copyright (C) 2026 MakiNoAtorie
GNU General Public License v3.0
*/

#include "pch.h"
#include "LeanCRT.h"

#include <chrono>
#include <fstream>

namespace LeanCRT
{
namespace
{
    std::string ToUtf8(const std::wstring& text)
    {
        if (text.empty())
            return {};

        const int size = WideCharToMultiByte(CP_UTF8, 0, text.data(), static_cast<int>(text.size()), nullptr, 0, nullptr, nullptr);
        std::string result(size, '\0');
        WideCharToMultiByte(CP_UTF8, 0, text.data(), static_cast<int>(text.size()), result.data(), size, nullptr, nullptr);
        return result;
    }

    bool WriteTextFile(const std::filesystem::path& path, const std::string& text, std::wstring& error)
    {
        std::ofstream file(path, std::ios::binary | std::ios::trunc);
        if (!file)
        {
            error = L"Could not write " + path.wstring();
            return false;
        }

        file.write(text.data(), static_cast<std::streamsize>(text.size()));
        if (!file)
        {
            error = L"Could not write " + path.wstring();
            return false;
        }

        return true;
    }

    std::wstring SettingsPath()
    {
        return (DataDir() / L"settings.ini").wstring();
    }

    // ReShade's ini cache skips a file whose timestamp is not newer than the
    // cached one. copy_file preserves the source timestamp, so switching from a
    // newer preset back to an older one would keep the newer preset loaded.
    // Stamp the active file forward after every copy.
    void StampNewer(const std::filesystem::path& path)
    {
        std::error_code ec;
        auto now = std::filesystem::file_time_type::clock::now();
        const auto current = std::filesystem::last_write_time(path, ec);
        if (!ec && current >= now)
            now = current + std::chrono::seconds(1);
        std::filesystem::last_write_time(path, now, ec);
    }
}

std::filesystem::path AppDir()
{
    wchar_t buffer[MAX_PATH] = {};
    const DWORD length = GetModuleFileNameW(nullptr, buffer, MAX_PATH);
    if (length == 0 || length == MAX_PATH)
        return std::filesystem::current_path();

    return std::filesystem::path(buffer).parent_path();
}

std::filesystem::path DataDir()
{
    return AppDir() / L"leancrt";
}

bool IsNativeMode()
{
    std::error_code ec;
    return std::filesystem::exists(AppDir() / L"native" / L"backend.flag", ec) &&
        !std::filesystem::exists(AppDir() / L"dxgi.dll", ec);
}

const wchar_t* PresetName(Preset preset)
{
    switch (preset)
    {
    case Preset::Retro: return L"Retro";
    case Preset::Retro43: return L"Retro 4:3";
    case Preset::Modern: return L"Modern";
    case Preset::Modern43: return L"Modern 4:3";
    case Preset::Arcade: return L"Arcade";
    case Preset::Off: return L"Off";
    }

    return L"Retro";
}

const wchar_t* PresetFile(Preset preset)
{
    switch (preset)
    {
    case Preset::Retro: return L"Retro.ini";
    case Preset::Retro43: return L"Retro43.ini";
    case Preset::Modern: return L"Modern.ini";
    case Preset::Modern43: return L"Modern43.ini";
    case Preset::Arcade: return L"Arcade.ini";
    case Preset::Off: return L"Off.ini";
    }

    return L"Retro.ini";
}

std::optional<Preset> ParsePreset(const std::wstring& name)
{
    if (name == L"Retro") return Preset::Retro;
    if (name == L"Retro 4:3") return Preset::Retro43;
    if (name == L"Modern") return Preset::Modern;
    if (name == L"Modern 4:3") return Preset::Modern43;
    if (name == L"Arcade") return Preset::Arcade;
    if (name == L"Off") return Preset::Off;
    return std::nullopt;
}

bool EnsureInstalled(std::wstring& error)
{
    std::error_code ec;
    const auto app = AppDir();
    const auto data = DataDir();
    const auto shader = data / L"Shaders" / L"LeanCRT.fx";

    // Native backend: no ReShade DLL or .ini files are needed. The generated
    // HLSL next to the executable is the whole shader dependency.
    if (IsNativeMode())
    {
        const auto nativeShader = app / L"native" / L"LeanCRT.hlsl";
        if (!std::filesystem::exists(nativeShader, ec))
        {
            error = L"LeanGlass native shaders not found:\n" + nativeShader.wstring() +
                L"\n\nThe native build ships them in the native folder next to LeanGlass.exe.";
            return false;
        }
        return true;
    }

    if (!std::filesystem::exists(shader, ec))
    {
        error = L"LeanCRT shaders not found:\n" + shader.wstring() +
            L"\n\nThe release build includes them in the leancrt folder next to LeanGlass.exe.";
        return false;
    }

    if (!std::filesystem::exists(app / L"dxgi.dll", ec))
    {
        error = L"ReShade engine not found:\n" + (app / L"dxgi.dll").wstring() +
            L"\n\nReShade's dxgi.dll must sit next to LeanGlass.exe. "
            L"The release build includes it; for a development build run tools\\setup-reshade.ps1.";
        return false;
    }

    std::filesystem::create_directories(data / L"Textures", ec);
    std::filesystem::create_directories(data / L"Cache", ec);

    std::wostringstream ini;
    ini << L"[GENERAL]\n"
        << L"EffectSearchPaths=.\\leancrt\\Shaders\n"
        << L"TextureSearchPaths=.\\leancrt\\Textures\n"
        << L"PresetPath=.\\leancrt\\Active.ini\n"
        << L"PerformanceMode=1\n"
        << L"SkipLoadingDisabledEffects=1\n"
        << L"NoDebugInfo=1\n"
        << L"IntermediateCachePath=.\\leancrt\\Cache\n"
        << L"\n[INPUT]\n"
        << L"KeyMenu=36,1,0,1\n"
        << L"KeyEffects=0,0,0,0\n"
        << L"KeyReload=82,1,0,1\n"
        << L"KeyScreenshot=44,0,0,0\n"
        << L"\n[SCREENSHOT]\n"
        << L"SaveBeforeShot=1\n"
        << L"SaveOverlayShot=0\n";

    if (!WriteTextFile(app / L"ReShade.ini", ToUtf8(ini.str()), error))
        return false;

    const auto active = data / L"Active.ini";
    if (!std::filesystem::exists(active, ec))
    {
        std::filesystem::copy_file(data / L"presets" / L"Retro.ini", active,
            std::filesystem::copy_options::overwrite_existing, ec);
        if (ec)
        {
            error = L"Could not create " + active.wstring();
            return false;
        }

        StampNewer(active);
    }

    return true;
}

bool ApplyPreset(Preset preset, std::wstring& error)
{
    std::error_code ec;
    const auto source = DataDir() / L"presets" / PresetFile(preset);
    const auto active = DataDir() / L"Active.ini";

    if (!std::filesystem::exists(source, ec))
    {
        error = L"Preset file missing:\n" + source.wstring();
        return false;
    }

    std::filesystem::copy_file(source, active, std::filesystem::copy_options::overwrite_existing, ec);
    if (ec)
    {
        error = L"Could not write " + active.wstring();
        return false;
    }

    StampNewer(active);
    SavePreset(preset);
    return true;
}

Preset LoadSavedPreset()
{
    wchar_t value[64] = {};
    GetPrivateProfileStringW(L"LeanCRT", L"Preset", L"Retro", value, 64, SettingsPath().c_str());

    return ParsePreset(value).value_or(Preset::Retro);
}

void SavePreset(Preset preset)
{
    std::error_code ec;
    std::filesystem::create_directories(DataDir(), ec);
    WritePrivateProfileStringW(L"LeanCRT", L"Preset", PresetName(preset), SettingsPath().c_str());
}

bool LoadAutoForeground()
{
    return GetPrivateProfileIntW(L"LeanCRT", L"AutoForeground", 0, SettingsPath().c_str()) != 0;
}

void SaveAutoForeground(bool enabled)
{
    std::error_code ec;
    std::filesystem::create_directories(DataDir(), ec);
    WritePrivateProfileStringW(L"LeanCRT", L"AutoForeground", enabled ? L"1" : L"0", SettingsPath().c_str());
}
}
