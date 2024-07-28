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
