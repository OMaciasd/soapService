# Configuración de Servicio Web SOAP en IIS

Este documento proporciona una guía rápida con los comandos utilizados para configurar un servicio web SOAP en IIS usando PowerShell y `appcmd.exe`.

## 1. **Clonar el repositorio.**

```git
git clone --recursive --depth=1 https://github.com/OMaciasd/soapService.git
```

![alt text][git]

## 2. **Instalar IIS y Componentes Necesarios.**

**Comandos:** El `MainScript.ps1` de **PowerShell** debe ejecutarse con privilegios de administrador.

![alt text][powershell]

## 3. **Crear el Application Pool.**

![alt text][iis]

## 4. **Crear el Directorio Físico para el Sitio.**

![alt text][explorer]

## 5. **Crear el Sitio Web en el Puerto 8083.**

![alt text][port]

## 6. **Asignar el Application Pool al Sitio Web.**

![alt text][sites]

## 7. **Verificar el Servicio Web SOAP.**

- Obtener WSDL:

![alt text][curl]

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
[curl]: curl.png
