param (
	[string]$appName,
	[string]$appPoolName
)

Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

Write-Output "** Setting application pool for $appName to $appPoolName. **"
& "$env:SystemRoot\System32\inetsrv\appcmd.exe" set app /app.name:$appName /applicationPool:$appPoolName

Clear-Host
