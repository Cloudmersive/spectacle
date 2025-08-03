# --- ensure Python 2.7.18 is on PATH (edit path if needed) ---
$py27Root     = 'C:\Python27'            # e.g. C:\Python27 or C:\Python\2.7.18
$py27Scripts  = Join-Path $py27Root 'Scripts'
$env:Path     = "$py27Root;$py27Scripts;$($env:Path)"
# --------------------------------------------------------------

& npm pack
Write-Host "Pack complete."
& npm i -g .\spectaclecm-docs-1.0.7.tgz
& spectaclecm --version