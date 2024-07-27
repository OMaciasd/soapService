param (
	[string]$appPoolName
)

& "$env:SystemRoot\System32\inetsrv\appcmd.exe" add apppool /name:$appPoolName
