/*
LeanGlass: LeanCRT integration for ShaderGlass
Copyright (C) 2026 MakiNoAtorie
GNU General Public License v3.0
*/

#include "pch.h"
#include "LeanCRT.h"

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

bool EnsureInstalled(std::wstring& error)
{
    std::error_code ec;
    const auto app = AppDir();
    const auto data = DataDir();
    const auto shader = data / L"Shaders" / L"LeanCRT.fx";

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

    const std::wstring dataPath = data.wstring();
    std::wostringstream ini;
    ini << L"[GENERAL]\n"
        << L"EffectSearchPaths=" << dataPath << L"\\Shaders\n"
        << L"TextureSearchPaths=" << dataPath << L"\\Textures\n"
        << L"PresetPath=" << dataPath << L"\\Active.ini\n"
        << L"PerformanceMode=1\n"
        << L"SkipLoadingDisabledEffects=1\n"
        << L"NoDebugInfo=1\n"
        << L"IntermediateCachePath=" << dataPath << L"\\Cache\n"
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

    SavePreset(preset);
    Reload();
    return true;
}

bool Reload()
{
    INPUT input[6] = {};
    for (INPUT& item : input)
        item.type = INPUT_KEYBOARD;

    input[0].ki.wVk = VK_CONTROL;
    input[1].ki.wVk = VK_MENU;
    input[2].ki.wVk = 'R';
    input[3].ki.wVk = 'R';
    input[3].ki.dwFlags = KEYEVENTF_KEYUP;
    input[4].ki.wVk = VK_MENU;
    input[4].ki.dwFlags = KEYEVENTF_KEYUP;
    input[5].ki.wVk = VK_CONTROL;
    input[5].ki.dwFlags = KEYEVENTF_KEYUP;

    return SendInput(6, input, static_cast<int>(sizeof(INPUT))) == 6;
}

Preset LoadSavedPreset()
{
    wchar_t value[64] = {};
    GetPrivateProfileStringW(L"LeanCRT", L"Preset", L"Retro", value, 64, SettingsPath().c_str());

    const std::wstring saved(value);
    if (saved == L"Retro 4:3") return Preset::Retro43;
    if (saved == L"Modern") return Preset::Modern;
    if (saved == L"Modern 4:3") return Preset::Modern43;
    if (saved == L"Arcade") return Preset::Arcade;
    if (saved == L"Off") return Preset::Off;
    return Preset::Retro;
}

void SavePreset(Preset preset)
{
    std::error_code ec;
    std::filesystem::create_directories(DataDir(), ec);
    WritePrivateProfileStringW(L"LeanCRT", L"Preset", PresetName(preset), SettingsPath().c_str());
}
}
