param(
    [Parameter(Mandatory = $true)][string]$Setup,
    [Parameter(Mandatory = $true)][string]$OutFile
)

$ErrorActionPreference = "Stop"
try { Add-Type -AssemblyName System.IO.Compression.FileSystem -ErrorAction Stop } catch { }

$setupPath = (Resolve-Path $Setup).Path
$bytes = [System.IO.File]::ReadAllBytes($setupPath)

# ReShade's setup tool is a self-extracting archive: find the embedded ZIP
# signature, then copy everything from that offset into a temporary ZIP.
$offset = -1
for ($i = 0; $i -le $bytes.Length - 30; $i++) {
    if ($bytes[$i] -eq 0x50 -and $bytes[$i + 1] -eq 0x4B -and $bytes[$i + 2] -eq 0x03 -and $bytes[$i + 3] -eq 0x04) {
        $nonZero = $false
        for ($j = 4; $j -lt 30; $j++) {
            if ($bytes[$i + $j] -ne 0) { $nonZero = $true; break }
        }
        if ($nonZero) { $offset = $i; break }
    }
}

if ($offset -lt 0) {
    throw "No embedded ZIP found in $setupPath"
}

$temp = [System.IO.Path]::GetTempFileName()
try {
    $source = [System.IO.File]::OpenRead($setupPath)
    $target = [System.IO.File]::Create($temp)
    try {
        $source.Seek($offset, [System.IO.SeekOrigin]::Begin) | Out-Null
        $source.CopyTo($target)
    }
    finally {
        $source.Close()
        $target.Close()
    }

    $zip = [System.IO.Compression.ZipFile]::OpenRead($temp)
    try {
        $entry = $zip.Entries | Where-Object { $_.Name -ieq "ReShade64.dll" } | Select-Object -First 1
        if (-not $entry) {
            throw "ReShade64.dll not found in the setup archive"
        }
        [System.IO.Compression.ZipFileExtensions]::ExtractToFile($entry, $OutFile, $true)
    }
    finally {
        $zip.Dispose()
    }
}
finally {
    Remove-Item $temp -Force -ErrorAction SilentlyContinue
}
