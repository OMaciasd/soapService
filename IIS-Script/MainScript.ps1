Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

# Variables
$sourcePath = "..\src\"
$destinationPath = "C:\inetpub\wwwroot\soapService"
$siteName = "soapService"
$bindings = "http/*:8083:"
$physicalPath = $destinationPath
$appPoolName = "soapServiceAppPool"
$testUrl = "http://localhost:8083/Service.asmx?WSDL"

Clear-Host

# Import and execute functions
.\Enable-IISFeatures.ps1

.\CreateAppPool.ps1 -appPoolName $appPoolName

.\Copy-ServiceFiles.ps1 -sourcePath $sourcePath -destinationPath $destinationPath

.\Add-Website.ps1 -siteName $siteName -bindings $bindings -physicalPath $physicalPath

.\Set-AppPool.ps1 -appName "$siteName/" -appPoolName $appPoolName

.\Test-Service.ps1 -url $testUrl
