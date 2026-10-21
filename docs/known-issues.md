# Known issues

## Preset A -> B -> A does not look identical

**Status:** fixed in v0.1.3, kept here because the native rewrite replaces this
path.

**Symptom:** the first preset loads correctly. After switching to another
preset and back, the original preset looks like the intermediate one, or like a
mix of both.

**Root cause:** `LeanCRT::ApplyPreset` used `std::filesystem::copy_file`, which
on Windows preserves the source file's last-write time. ReShade's INI cache
(`ini_file::load`) skips a file when its cached timestamp is greater than or
equal to the file's current timestamp. Preset files created together have
nearly identical timestamps, so switching back to an older preset made
`Active.ini` look older than the cached copy and ReShade kept the previous
preset's values.

**Fix:** after every copy to `leancrt\Active.ini`, `StampNewer` sets the file's
last-write time to now, or one second past its current value if that is already
in the future. ReShade then always sees a newer file and reloads it before
recompiling.

**Residual risk:** LeanCRT keeps persistent caches (`texBeamDist`,
`texFreezeFrame`, `texPhosphorMask`, `texPhosphorBlue`). A full effect reload
recreates them, so this path should be clean, but live parameter changes that
do not reload the effect can still leave stale segments. The native backend
must invalidate those caches explicitly on preset change.

## Wavy interference pattern

**Status:** addressed in v0.1.2 by forcing ShaderGlass's shader chain to
passthrough; root cause not confirmed on the user's hardware.

Two candidates:

- A second ShaderGlass CRT shader stacked on LeanCRT. Removed by the
  passthrough force at startup.
- Scanline/mask moire from non-integer scaling between the captured window and
  the output. Set the game to the monitor's native resolution and try the
  Modern preset; the native backend should eventually render the content box at
  native resolution instead of scaling the whole frame.
