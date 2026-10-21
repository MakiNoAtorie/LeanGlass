LeanGlass
=========

A ShaderGlass fork that runs LeanCRT inside ReShade, with ReShade hidden behind
a small preset menu. ShaderGlass captures a window or monitor; LeanCRT runs on
the captured image; the game itself is never modified.

Usage
-----
1. Run LeanGlass.exe.
2. Pick the source in Input > Window or Input > Desktop.
3. Press Ctrl+Shift+G for borderless fullscreen.
4. Use the LeanCRT menu to pick a look:
   Retro, Retro 4:3, Modern, Modern 4:3, Arcade, Off.

Presets are copied over leancrt\Active.ini. ReShade reloads the shader; there
are no ReShade settings to touch.

Keys
----
Ctrl+Shift+G   borderless fullscreen on/off
Ctrl+Alt+R     reload the active LeanCRT preset
Ctrl+Home      open ReShade's overlay (hidden debug view)

Notes
-----
- Windowed or borderless fullscreen is recommended. Exclusive fullscreen may
  not capture.
- HDR must be off; LeanCRT is SDR.
- Capture adds roughly 1-3 frames of latency. Test before using it for fast
  action games.
- DRM/protected content will not capture.
- Some online games' terms forbid overlays. Use it on single-player games.

Building
--------
Visual Studio 2022, Windows SDK, x64 Release. The solution builds LeanGlass.exe
and copies leancrt next to it. For a development run, install the ReShade proxy
once:

    powershell -ExecutionPolicy Bypass -File .\tools\setup-reshade.ps1 -Dir .\x64\Release

Then run .\x64\Release\LeanGlass.exe.

Licenses and attribution
------------------------
LeanGlass is based on ShaderGlass by mausimus (GPLv3).
LeanCRT is by MakiNoAtorie (GPL-2.0-or-later).
ReShade is by crosire (BSD-3-Clause).
See ShaderGlass-LICENSE.txt, leancrt\LeanCRT-LICENSE.txt, and
leancrt\ReShade-LICENSE.md.
