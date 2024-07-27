param (
	[string]$appName,
	[string]$appPoolName
)

& "$env:SystemRoot\System32\inetsrv\appcmd.exe" set app /app.name:$appName /applicationPool:$appPoolName
