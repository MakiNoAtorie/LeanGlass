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
- Native mode currently renders the Retro look only. The preset menu is not
  wired to the native backend yet.
- The internal pipeline is 1920x1080 and the final blit scales to the window.
- Curved output (Arcade geometry) is not in the native path yet.
- Do not put a dxgi.dll next to this exe. ReShade would inject and stack on the
  native output.

If the window is black, check that native\LeanCRT.hlsl exists next to
LeanGlass.exe.
