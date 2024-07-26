param (
	[string]$url
)

Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

Write-Output "** Testing the service at $url. **"
curl -L -v $url

Start-Sleep -Seconds 5

Clear-Host
