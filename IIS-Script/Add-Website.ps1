param (
	[string]$siteName,
	[string]$bindings,
	[string]$physicalPath
)

Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

& "$env:SystemRoot\System32\inetsrv\appcmd.exe" add site /name:$siteName /bindings:$bindings /physicalPath:$physicalPath

Clear-host
