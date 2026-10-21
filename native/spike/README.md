# Native LeanCRT spike

Standalone Windows D3D11 test that runs the LeanCRT pass graph without
ReShade. It renders one 1920x1080 still through all 16 passes and writes
`native-spike.bmp`.

`LeanCRT.hlsl` is generated from the unmodified LeanCRT source:

```
/tmp/reshadefx --hlsl --spec-constants --shader-model 50 --width 1920 --height 1080 \
  -D __RENDERER__=0xb000 -D __RESHADE_PERFORMANCE_MODE__=1 -D ENABLE_PREBLUR=0 \
  -I Shaders -Fo LeanCRT.hlsl LeanCRT.fx
```

`--spec-constants` turns every uniform into a compile-time `#define`, so the
runtime needs no uniform buffer except `frame_count`. This is the same code
ReShade compiles in performance mode.

Build with MSVC:

```
cl /nologo /std:c++17 /EHsc /O2 /I native\spike native\spike\main.cpp /Fe:native-spike.exe /link d3d11.lib d3dcompiler.lib
```

Run from a directory containing `LeanCRT.hlsl`. The harness falls back to the
WARP software renderer when no hardware device is present.

The pass table mirrors the fused-bloom D3D11 permutation: 16 passes, MRT for
the phosphor mask, and one compute dispatch for the final bloom. The next step
is to feed it a captured frame and move the executor into LeanGlass.

## Result

All 16 passes execute and the raster composite contains the finished masked
image. A 4x zoom of the white bar shows the vertical RGB phosphor grid and
horizontal scanlines; a pure green bar correctly shows only green modulation
because there is no red or blue signal to light.

LeanCRT's own `Output` pass samples black in this harness, so the spike uses a
small final blit from the raster composite to the 8-bit output. The app should
keep that blit for the straight path and use LeanCRT's geometry/output passes
for curved output once the Output-pass issue is resolved.

The mask is generated one 1/64-wide vertical segment per frame; the harness
prewarms all 64 segments before rendering the still.


