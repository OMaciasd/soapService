Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

$config = Get-Content -Path "..\config\config.json" | ConvertFrom-Json

Clear-host

.\Enable-IISFeatures.ps1

.\CreateAppPool.ps1 -appPoolName $config.appPoolName

.\Copy-ServiceFiles.ps1 -sourcePath $config.sourcePath -destination $config.destinationPath

.\Add-Website.ps1 -siteName $config.siteName -bindings $config.bindings -physicalPath $config.physicalPath

.\Set-AppPool.ps1 -appName "$($config.siteName)/" -appPoolName $config.appPoolName

..\src\test\test_Service.ps1
