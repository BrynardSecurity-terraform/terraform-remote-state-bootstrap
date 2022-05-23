# Welcome to tfe_oauth_client 👋
![Version](https://img.shields.io/badge/version-v0.0.1-blue.svg?cacheSeconds=2592000)

## Show your support

Give a ⭐️ if this project helped you!


***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_oauth_client.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/oauth_client) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_api_url"></a> [api\_url](#input\_api\_url) | API URL of the Version Control Provider | `string` | n/a | yes |
| <a name="input_https_url"></a> [https\_url](#input\_https\_url) | HTTP URL of the VCS provider | `string` | n/a | yes |
| <a name="input_oauth_token"></a> [oauth\_token](#input\_oauth\_token) | OAuth Token String provided by the VCS provider | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Terraform Cloud organization which has the backend state-file | `string` | n/a | yes |
| <a name="input_service_provider"></a> [service\_provider](#input\_service\_provider) | VCS provider being connected with | `string` | `"github"` | no |
| <a name="input_tfe_oauth_client_name"></a> [tfe\_oauth\_client\_name](#input\_tfe\_oauth\_client\_name) | Display name of the OAuth Client | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_oauth_token_id"></a> [oauth\_token\_id](#output\_oauth\_token\_id) | The ID of the OAuth token associated with the OAuth client |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
