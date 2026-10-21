LeanGlass native backend (experimental)
=======================================

This build does not use ReShade. LeanGlass runs LeanCRT itself with Direct3D 11.

Contents
--------
LeanGlass.exe          the application
native\LeanCRT.hlsl    generated from the unmodified LeanCRT shader
ShaderGlass-LICENSE.txt
LeanCRT-LICENSE.txt

Usage
-----
1. Extract the whole folder, not just the exe.
2. Run LeanGlass.exe.
3. Input > Window (choose the game) or Input > Desktop.
4. Start.

There is no dxgi.dll, no ReShade.ini, and no .ini preset files.

Current limits
--------------
- Native mode compiles one generated HLSL per preset (Retro, Retro 4:3,
  Modern, Modern 4:3, Arcade). A missing file shows an error and falls back to
  no effect.
- The internal pipeline is 1920x1080. The 4:3 presets use the center
  1440x1080 content box; the final blit scales to the window.
- Arcade runs LeanCRT's real Output/geometry pass; the other presets use the
  straight blit.
- Do not put a dxgi.dll next to this exe. ReShade would inject and stack on the
  native output.

If the window is black, check that the native\LeanCRT*.hlsl files exist next to
LeanGlass.exe.
