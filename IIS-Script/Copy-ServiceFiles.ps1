param (
	[string]$sourcePath,
	[string]$destinationPath
)

Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

Write-Output "** Copying service files from $sourcePath to $destinationPath. **"
Copy-Item -Path $sourcePath -Destination $destinationPath -Recurse -Force
Clear-Host
