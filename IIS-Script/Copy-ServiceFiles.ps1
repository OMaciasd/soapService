param (
	[string]$sourcePath,
	[string]$destinationPath
)

Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

Copy-Item -Path $sourcePath -Destination $destinationPath -Recurse -Force

Clear-host
