param (
	[string]$appPoolName
)

Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

Write-Output "** Creating application pool: $appPoolName. **"
& "$env:SystemRoot\System32\inetsrv\appcmd.exe" add apppool /name:$appPoolName

Clear-Host
