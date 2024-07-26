Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

Write-Output "** Enabling IIS features..."
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole, IIS-WebServer, IIS-ManagementConsole, IIS-ASPNET45, IIS-NetFxExtensibility45 -All

Clear-Host
