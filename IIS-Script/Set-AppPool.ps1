param (
	[string]$appName,
	[string]$appPoolName
)

Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

& "$env:SystemRoot\System32\inetsrv\appcmd.exe" set app /app.name:$appName /applicationPool:$appPoolName

Clear-host
