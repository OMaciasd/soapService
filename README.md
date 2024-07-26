# Configuración de Servicio Web SOAP en IIS

Este documento proporciona una guía rápida con los comandos utilizados para configurar un servicio web SOAP en IIS usando PowerShell y `appcmd.exe`.

## 1. **Clonar el repositorio.**

```git
git clone --recursive --depth=1 https://github.com/OMaciasd/soapService.git
```

![alt text][git]

## 2. **Instalar IIS y Componentes Necesarios.**

**Comandos:** Los comandos **PowerShell** deben ejecutarse con privilegios de administrador.

```powershell
Enable-WindowsOptionalFeature -Online -FeatureName IIS-WebServerRole, IIS-WebServer, IIS-ManagementConsole, IIS-ASPNET45, IIS-NetFxExtensibility45 -All
```

![alt text][powershell]

## 3. **Crear el Application Pool.**

```powershell
& "$env:SystemRoot\System32\inetsrv\appcmd.exe" add apppool /name:"soapServiceAppPool"
```

![alt text][iis]

## 4. **Crear el Directorio Físico para el Sitio.**

```powershell
Copy-Item -Path .\src\ -Destination "C:\inetpub\wwwroot\soapService" -Recurse -Force
```

![alt text][explorer]

## 5. **Crear el Sitio Web en el Puerto 8083.**

```powershell
& "$env:SystemRoot\System32\inetsrv\appcmd.exe" add site /name:"soapService" /bindings:http/*:8083: /physicalPath:"C:\inetpub\wwwroot\soapService"
```

![alt text][port]

## 6. **Asignar el Application Pool al Sitio Web.**

```powershell
& "$env:SystemRoot\System32\inetsrv\appcmd.exe" set app /app.name:"soapService/" /applicationPool:"soapServiceAppPool"
```

![alt text][sites]

## 7. **Verificar el Servicio Web SOAP.**

- Obtener WSDL:

```powershell
curl -L -v "http://localhost:8083/Service.asmx?WSDL"
```

- Hacer una Llamada SOAP:

  **Pruebas:** Para hacer una llamada SOAP, puedes usar herramientas como el cliente **SoapUI**.

![alt text][soapui]

[git]: assets/images/git.png
[powershell]: assets/images/powershell.png
[iis]: assets/images/iis.png
[explorer]: assets/images/explorer.png
[port]: assets/images/port.png
[sites]: assets/images/sites.png
[soapui]: assets/images/soapui.png
