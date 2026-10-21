# Native backend scope

Goal: one executable. LeanGlass owns capture, render loop, presets, and UI.
ReShade is not shipped, injected, or configured at runtime.

The LeanCRT shader source stays untouched. It is compiled at build time, and
LeanGlass executes the resulting pass graph in its own D3D11 renderer.

## What ReShade does today

1. Compiles ReShade FX (`LeanCRT.fx` and its includes) to HLSL/DXBC.
2. Allocates and binds the effect's textures, samplers, and render targets.
3. Runs the technique's passes in order, including MRT and compute.
4. Applies preset uniform values and preprocessor definitions.

All four can move into LeanGlass. The first becomes a build step; the rest
become a small fixed render graph.

## Pass graph (D3D11, 1080p, fused bloom, no preblur)

1. BeamLookup -> texBeamDist (RGB10A2)
2. CachedBeams -> texElectronBeams (RGBA16)
3. BeamsConvergence -> texBeamConvergence (RGBA16)
4. BloomApprox -> texBloomApproxHoriz (RGBA16, downscaled)
5. DiffusionVert -> texBlurVertical (RGBA16)
6. DiffusionHoriz -> texBlurHorizontal (RGBA16)
7. Deinterlace -> texDeinterlace (RGBA16)
8. History -> texFreezeFrame (RGBA16, persistent)
9. PhosphorLookup -> texPhosphorMask (RG16) + texPhosphorBlue (R16), MRT
10. Mask -> texMaskedScanlines (aliases texPreblurVert)
11. Bright -> texBrightpass (aliases texDeinterlace)
12. BloomVert -> texBloomVertical (aliases texBeamConvergence)
13. BloomHoriz -> texBloomHorizontal (aliases texPreblurHoriz)
14. BloomComposite (compute) -> texBloomComposite / texFinal
15. GeometryCache -> texGeometry (aliases texElectronBeams)
16. Output -> backbuffer

At 4K the compute pass switches to tiled bloom; the raster BloomVert/Horiz
passes drop out. With `ENABLE_PREBLUR` there are two extra passes. With
`CONTENT_BOX_VISIBLE` the technique is a single pass. These are build-time
permutations, not runtime branches.

Persistent resources that must survive across frames: texBeamDist,
texFreezeFrame, texPhosphorMask, texPhosphorBlue. The rest can be cleared or
overwritten each frame.

## Runtime pieces

- D3D11 device and swapchain (already in ShaderGlass; keep or simplify).
- Texture creation for the formats above, with the same wrap/border address
  modes as `resources.fxh`.
- A constant buffer holding LeanCRT's uniforms. Compile the effect with
  `__RESHADE_PERFORMANCE_MODE__=0` so uniforms stay dynamic instead of being
  baked into the shader. The `leanMaskPS` shared-blue fast path is skipped,
  which is a small cost and does not change output.
- A pass executor: bind SRVs/RTVs, set topology and vertex count, dispatch
  compute with the sizes from the shader, draw.
- Content-box variants: `CONTENT_WIDTH`/`CONTENT_HEIGHT` are compile-time
  definitions, so compile 16:9, 16:10, 4:3 and 21:9 variants at build time.
  Presets stay runtime data.
- Preset data as a plain LeanGlass struct, not `.ini` files.

## Effort and risks

- Fixed graph, not a generic effect runtime: about 1.5-2.5k lines of C++.
- Main risks: uniform buffer layout matching the compiled shader, resource
  state and aliasing, persistent caches, compute group constants, and visual
  parity at the final store.
- The first spike should compile LeanCRT to HLSL with ReShade's `fxc`, run
  BeamLookup + CachedBeams + Output on a still image, and compare against the
  ReShade output. If those three match, the remaining passes are plumbing.

## Spike result

ReShade's `fxc` compiles `LeanCRT.fx` to about 536 KB of plain HLSL with
`__RESHADE_PERFORMANCE_MODE__=0`. The output has no ReShade runtime types: all
parameters arrive in one `_Globals` constant buffer (roughly 50 members, names
prefixed `V__`), and the pass entry points are ordinary `vs_5_0`/`ps_5_0`/
`cs_5_0` functions. That confirms the native path is viable: compile the entry
points to DXBC at build time, reflect the constant buffer once, fill it from
LeanGlass preset data, and run the fixed pass graph.

## What is deliberately not in scope

- Editing LeanCRT shader source.
- A generic ReShade-FX runtime or add-on support.
- Cross-platform shader port (HLSL/GLSL/WGSL) and HDR/10-bit. Those come
  after the D3D11 native backend proves parity.
