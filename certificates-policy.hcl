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
