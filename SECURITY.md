# Seguridad

## Secretos

**Nunca commitees**:

- Kubeconfig, tokens de cluster, claves SSH
- Tokens de GitHub (PAT / App)
- Credenciales de registry

## Buenas prácticas

1. Credenciales solo en cluster (Secrets) o archivos locales gitignored
2. ServiceAccounts con permisos mínimos (RBAC)
3. Runners self-hosted en namespaces aislados
4. Rotar tokens periódicamente

## Consideraciones del proyecto

- Tokens de GitHub y kubeconfig: configurar localmente, nunca commitear
- Runners self-hosted: aislar permisos y namespaces

## Reporte de vulnerabilidades

Contactá al mantenedor o usá [GitHub Security Advisories](https://github.com/ghcetraro/terraform_github_actions_runner/security/advisories/new).

Usá `terraform.tfvars.example` como plantilla; nunca subas `*.tfvars` ni `*.tfstate`.
