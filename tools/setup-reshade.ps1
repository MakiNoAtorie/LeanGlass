param(
    [string]$Dir = "."
)

$ErrorActionPreference = "Stop"
$tools = Split-Path -Parent $MyInvocation.MyCommand.Path
$target = (Resolve-Path $Dir).Path
$dll = Join-Path $target "dxgi.dll"

if (Test-Path $dll) {
    Write-Host "dxgi.dll already exists in $target; leaving it alone."
    exit 0
}

$setup = Join-Path $env:TEMP "ReShade_Setup_6.6.2.exe"
Write-Host "Downloading ReShade 6.6.2..."
Invoke-WebRequest -Uri "https://reshade.me/downloads/ReShade_Setup_6.6.2.exe" -OutFile $setup

try {
    & (Join-Path $tools "extract-reshade.ps1") -Setup $setup -OutFile $dll
}
finally {
    Remove-Item $setup -Force -ErrorAction SilentlyContinue
}

Write-Host "ReShade 6.6.2 installed as $dll"

$repoRoot = Split-Path -Parent $tools
$iniTemplate = Join-Path $repoRoot "ShaderGlass\leancrt\ReShade.ini"
$iniTarget = Join-Path $target "ReShade.ini"
if ((Test-Path $iniTemplate) -and -not (Test-Path $iniTarget)) {
    Copy-Item $iniTemplate $iniTarget -Force
    Write-Host "Wrote $iniTarget"
}
