<<<<<<< HEAD
import os
import hvac

# Leer el token desde una variable de entorno para mayor seguridad
vault_token = os.getenv('VAULT_TOKEN')
vault_url = 'http://127.0.0.1:8200'

# Crear un cliente de Vault
client = hvac.Client(url=vault_url, token=vault_token)

# Verificar si el cliente está autenticado
if not client.is_authenticated():
    raise Exception("Error de autenticación con Vault")

# Obtener los secretos
certificate_crt = client.secrets.kv.v2.read_secret_version(path='certificates/certificate.crt')['data']['data']['value']
private_key = client.secrets.kv.v2.read_secret_version(path='certificates/private.key')['data']['data']['value']
certificate_pfx = client.secrets.kv.v2.read_secret_version(path='certificates/certificate.pfx')['data']['data']['value']
request_csr = client.secrets.kv.v2.read_secret_version(path='certificates/request.csr')['data']['data']['value']

# Guardar los secretos en archivos locales
with open('certificates/certificate.crt', 'w') as f:
    f.write(certificate_crt)

with open('certificates/private.key', 'w') as f:
    f.write(private_key)

with open('certificates/certificate.pfx', 'wb') as f:
    f.write(certificate_pfx.encode())

with open('certificates/request.csr', 'w') as f:
    f.write(request_csr)

print("Certificados obtenidos y guardados exitosamente.")
=======
import hvac
import os
from dotenv import load_dotenv
import base64

load_dotenv('config.env')

client = hvac.Client(url='http://127.0.0.1:8200', token=os.environ.get('VAULT_TOKEN'))


def fetch_secret(path):
    try:
        response = client.secrets.kv.v1.read_secret(path=path)
        return response['data']['value']  # Asegúrate de obtener el valor del secreto
    except hvac.exceptions.InvalidRequest as e:
        print(f"Error de solicitud para {path}: {e}")
    except Exception as e:
        print(f"Error al obtener el secreto {path}: {e}")
    return None


certificate_crt = fetch_secret('certificates/certificate.crt')
private_key = fetch_secret('certificates/private.key')
certificate_pfx = fetch_secret('certificates/certificate.pfx')
request_csr = fetch_secret('certificates/request.csr')

if all([certificate_crt, private_key, certificate_pfx, request_csr]):
    print("Certificado:", certificate_crt)
    print("Clave privada:", private_key)
    print("Certificado PFX:", certificate_pfx[:100])  # Imprime los primeros 100 caracteres para depuración
    print("Solicitud CSR:", request_csr)

    with open('certificate.crt', 'w') as cert_file:
        cert_file.write(certificate_crt)

    with open('private.key', 'w') as key_file:
        key_file.write(private_key)

    with open('request.csr', 'w') as csr_file:
        csr_file.write(request_csr)

    if certificate_pfx:
        try:
            # Verifica si la cadena contiene caracteres no válidos
            if all(c in 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=' for c in certificate_pfx):
                pfx_data = base64.b64decode(certificate_pfx)
                with open('certificate.pfx', 'wb') as pfx_file:
                    pfx_file.write(pfx_data)
            else:
                print("El PFX contiene caracteres no válidos.")
        except Exception as e:
            print(f"Error al decodificar el PFX: {e}")

    print("Certificados obtenidos y guardados exitosamente.")
else:
    print("No se pudieron obtener todos los secretos.")
>>>>>>> f91d945 (🔀 feat(soap): Add vault secrets (#6))
