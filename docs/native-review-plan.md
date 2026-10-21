# Native backend review plan

Source: eight parallel reviews of `native-backend` at `9b2617b` (native
renderer, integration, build/CI, UX, performance, parity, shader binding,
robustness). This file is the consolidated plan; checkboxes are updated as
fixes land.

Runtime visual verification of preprocessing parity and the HDR guard is still
pending on Windows; CI only checks that the build succeeds.

## Fixed in this pass

- [x] **P0 — swapchain rebuilt every frame.** `ShaderGlass::Process` now
  consumes and clears `m_outputRescaled` before the native early return.
- [x] **P1 — constant buffer overread.** `NativeLeanCRT` now uses a zeroed
  32-byte `FrameConstants` struct (frame_count + zeroed help/overlay fields)
  instead of uploading 16 bytes from a 4-byte `UINT`.
- [x] **P1 — missing phosphor blue MRT.** `Pass` has an optional second render
  target; `PhosphorLookup` binds `T_PHOSPHOR_MASK` and `T_PHOSPHOR_BLUE`.
- [x] **P1 — resize blocked by bound views.** The native renderer unbinds RTVs,
  SRVs and samplers at the end of every frame, so `ResizeBuffers` can succeed.
- [x] **P1 — linear output too dark.** The temporary final blit applies the
  missing `1/2.2` output encode. Replacing it with LeanCRT's real Output pass
  is still on the list.
- [x] **P1 — silent native init failure.** Init errors are stored in
  `ShaderGlass`, polled from the UI timer, and shown in a message box; native
  mode is not silently left enabled.
- [x] **P1 — first frames rendered the wrong path.** Native mode is now set on
  `CaptureManager` before `StartSession`, not after the capture thread starts.
- [x] **P1 — `-native` with dxgi.dll stacked ReShade.** Refused with a clear
  warning; the app falls back to ReShade instead of double-processing.
- [x] **P1 — missing cursor.** Native mode no longer hides the system cursor
  while the emulated cursor is not composited.
- [x] **P2 — ambient blend/depth state.** Native `Render` explicitly disables
  blend/depth and uses a no-cull rasterizer state.
- [x] **P2 — dead GeometryCache pass.** Removed from the native table; it wrote
  a target nothing sampled.
- [x] **P2 — unused preblur textures.** Removed (preblur is compiled out).
- [x] **P0 — native mode bypassed preprocessing.** The native tap now runs
  after `m_preprocessPass.Render` and cursor compositing and consumes
  `m_originalView`, so pixel size, crop, flip, vertical and cursor settings
  apply to native output. The ShaderGlass shader chain is still skipped.
- [x] **P1 — HDR captured for an SDR native renderer.** Native sessions force
  `useHDR` off at startup (menu unchecked, ReShade registry state untouched);
  the ReShade path keeps its current HDR behavior.

## Fixed in the v0.4.1 review

- [x] **P2 — ReShade window resizing became content-locked.** `WM_SIZING`
  proportional sizing now only runs in native mode, so the ReShade path keeps
  its old free resize behavior.
- [x] **P2 — native preset was not persisted.** Native preset/Off changes now
  call `LeanCRT::SavePreset` like the ReShade path, so `LoadSavedPreset` sees
  the last native choice.
- [x] **P2 — native final blit ignored the content rectangle.** The blit now
  uses the same letterbox/output-scale rectangle as the ShaderGlass path and
  clears the bars. 4:3 presets are fitted to a 4:3 destination, preserving the
  content box in borderless/oversized windows.

Still runtime-only: visual parity of the 4:3 content box and Arcade geometry at
non-1080p, and the HDR/SDR output path on an HDR display.

## Fixed in v0.2.2

- [x] Native FPS is counted again; the title shows `LeanGlass native (Retro, ~Nfps)`.
- [x] Native mode forces the Retro radio and ignores a saved Off/preset state, so
  the menu no longer claims a preset the renderer is not drawing.
- [x] Win32 link dependencies include `d3dcompiler.lib` and `dxguid.lib`.
- [x] CI cleans both stage directories, asserts the native zip's exact five
  files, checks the HLSL size, rejects ReShade leakage, and fails the artifact
  upload when a zip is missing.

## Next: correctness and parity

- [ ] Run LeanCRT's real `Output` pass (`leanOutputVS`/`leanOutputPS`) instead
  of the temporary blit. Unblocks border dimming, content box, and curved
  output. Investigate why the spike's Output pass sampled black.
- [ ] Six presets as data. Regenerate the HLSL with dynamic uniforms
  (`__RESHADE_PERFORMANCE_MODE__=0`) and fill the `_Globals` cbuffer from a
  plain preset struct; preset switch becomes a buffer write.
- [ ] 4:3 / 16:10 / 21:9 content variants and content-box pillarboxing.
- [ ] Arcade curvature via `geom_mode=1` + GeometryCache + Output.
- [ ] Resolution-specific compiles or a 1:1 output path; the 1080p internal
  target currently upscales at 1440p/4K and downscales the mask at 720p.

## Next: robustness and UX

- [ ] Cache compiled shaders at build time (`.cso`) and eliminate the 1-4 s
  first-frame `D3DCompile` stall; add `/O3`.
- [ ] Add a native status indicator (title/menu) and make the LeanCRT menu
  honest: native Retro forced, unsupported presets labeled, Off wired to a
  bypass.
- [ ] FPS counter in native mode (early return currently skips it).
- [ ] Fix or label every control native ignores: Shader menu, Parameters,
  Aspect Ratio, Output Scale, Crop, HDR.
- [ ] Cursor: composite the emulated cursor in native glass mode.
- [ ] Reload: `Shutdown` + reinitialize in place, or document restart-only.
- [ ] Device-lost handling (`DXGI_ERROR_DEVICE_REMOVED`) and a real
  `ResizeBuffers` failure path instead of `assert`.

## Next: build and performance

- [ ] Fix Win32 link dependencies (`d3dcompiler.lib;dxguid.lib`) or drop x86.
- [ ] Assert native zip contents in CI (exact five files, no dxgi/ReShade) and
  clean stage directories; `if-no-files-found: error`.
- [ ] Replace the dxgi-presence heuristic with an explicit backend marker;
  document `-native`.
- [ ] Precompile the HLSL at build time; commit a generator pinned to a known
  ReShade fxc; fail CI if the generated file drifts.
- [ ] Fused bloom compute permutation: removes the four-pass raster bloom and
  roughly halves render-target traffic.
- [ ] Remove remaining dead work after presets land: History/Deinterlace copies
  when interlacing is off, CachedBeams at zero convergence, duplicate full-res
  clears.
- [ ] Trim per-frame binding cost: fixed pass table with cached shader pointers,
  bind only used slots, cache the capture SRV.

## Out of scope for this pass

- LeanCRT shader source edits.
- Generic ReShade FX runtime or add-ons.
- Cross-platform shader port and HDR/10-bit.
