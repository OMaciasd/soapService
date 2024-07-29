path "secret/data/certificates/*" {
  capabilities = ["read", "list"]
}

path "secret/data/certificates/certificate.crt" {
  capabilities = ["read"]
}

path "secret/data/certificates/certificate.pfx" {
  capabilities = ["read"]
}

path "secret/data/certificates/private.key" {
  capabilities = ["read"]
}

path "secret/data/certificates/request.csr" {
  capabilities = ["read"]
}

path "secret/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}
<<<<<<< HEAD
=======
PS C:\Users\LENOVO\soapService> type C:\vault_1.17.2_windows_amd64\certificates-policy.hcl
path "secret/certificates/*" {
  capabilities = ["read", "list"]
}

path "secret/certificates/certificate.crt" {
  capabilities = ["read"]
}

path "secret/certificates/certificate.pfx" {
  capabilities = ["read"]
}

path "secret/certificates/private.key" {
  capabilities = ["read"]
}

path "secret/certificates/request.csr" {
  capabilities = ["read"]
}

path "secret/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}
>>>>>>> f91d945 (🔀 feat(soap): Add vault secrets (#6))
