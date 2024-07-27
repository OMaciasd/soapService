param (
	[string]$siteName,
	[string]$bindings,
	[string]$physicalPath
)

& "$env:SystemRoot\System32\inetsrv\appcmd.exe" add site /name:$siteName /bindings:$bindings /physicalPath:$physicalPath
