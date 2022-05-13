# sanity

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_oauth_client"></a> [oauth\_client](#module\_oauth\_client) | ../../modules/tfe_oauth_client/ | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_url"></a> [api\_url](#input\_api\_url) | VCS API URL | `string` | `"https://api.github.com"` | no |
| <a name="input_https_url"></a> [https\_url](#input\_https\_url) | VCS HTTPS URL | `string` | `"https://github.com"` | no |
| <a name="input_oauth_token"></a> [oauth\_token](#input\_oauth\_token) | VCS provider OAuth token | `string` | `""` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Terraform cloud organization name | `string` | `"this"` | no |
| <a name="input_service_provider"></a> [service\_provider](#input\_service\_provider) | VCS Service provider | `string` | `"github"` | no |
| <a name="input_tfe_oauth_client_name"></a> [tfe\_oauth\_client\_name](#input\_tfe\_oauth\_client\_name) | Terraform VCS OAuth client name | `string` | `"this"` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
