/*
LeanGlass: LeanCRT integration for ShaderGlass
Copyright (C) 2026 MakiNoAtorie
GNU General Public License v3.0
*/

#pragma once

#include <filesystem>
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

    std::filesystem::path AppDir();
    std::filesystem::path DataDir();

    // Checks for the ReShade proxy and the LeanCRT shader tree, creates the
    // runtime folders, and writes ReShade.ini with this installation's paths.
    bool EnsureInstalled(std::wstring& error);

    // Copies the preset over leancrt\Active.ini and asks ReShade to reload it.
    bool ApplyPreset(Preset preset, std::wstring& error);

    // Sends ReShade's reload shortcut (Ctrl+Alt+R).
    bool Reload();

    Preset LoadSavedPreset();
    void   SavePreset(Preset preset);
}
