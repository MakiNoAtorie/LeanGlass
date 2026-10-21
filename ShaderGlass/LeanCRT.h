/*
LeanGlass: LeanCRT integration for ShaderGlass
Copyright (C) 2026 MakiNoAtorie
GNU General Public License v3.0
*/

#pragma once

#include <filesystem>
#include <optional>
#include <string>

namespace LeanCRT
{
    enum class Preset
    {
        Retro = 0,
        Retro43,
        Modern,
        Modern43,
        Arcade,
        Off
    };

    const wchar_t* PresetName(Preset preset);
    const wchar_t* PresetFile(Preset preset);
    std::optional<Preset> ParsePreset(const std::wstring& name);

    std::filesystem::path AppDir();
    std::filesystem::path DataDir();

    // Native mode is explicit: native\backend.flag exists and no dxgi.dll.
    // A dxgi.dll always wins so ReShade is never stacked under the native path.
    bool IsNativeMode();

    // Checks for the ReShade proxy and the LeanCRT shader tree, creates the
    // runtime folders, and writes ReShade.ini with this installation's paths.
    bool EnsureInstalled(std::wstring& error);

    // Copies the preset over leancrt\Active.ini. The caller asks ReShade to reload.
    bool ApplyPreset(Preset preset, std::wstring& error);

    Preset LoadSavedPreset();
    void   SavePreset(Preset preset);

    bool LoadAutoForeground();
    void SaveAutoForeground(bool enabled);
}
