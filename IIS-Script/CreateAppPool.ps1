param (
	[string]$appPoolName
)

Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

& "$env:SystemRoot\System32\inetsrv\appcmd.exe" add apppool /name:$appPoolName

Clear-host
