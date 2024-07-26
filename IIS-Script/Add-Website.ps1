param (
	[string]$siteName,
	[string]$bindings,
	[string]$physicalPath
)

Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

Write-Output "** Adding website: $siteName with bindings: $bindings and physical path: $physicalPath. **"
& "$env:SystemRoot\System32\inetsrv\appcmd.exe" add site /name:$siteName /bindings:$bindings /physicalPath:$physicalPath

Clear-Host
