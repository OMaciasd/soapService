param (
	[string]$sourcePath,
	[string]$destinationPath
)

Copy-Item -Path $sourcePath -Destination $destinationPath -Recurse -Force
