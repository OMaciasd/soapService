Write-Output "***********************************"
Write-Output "** Script developed by Omaciasd. **"
Write-Output "***********************************"
Write-Output ""

curl -v "http://localhost:8083/Service.asmx?WSDL"

sleep 5

Clear-host
