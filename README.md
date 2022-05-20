# Welcome to Terraform Remote State Bootstrapping Module 👋
![Version](https://img.shields.io/badge/version-v0.0.4-blue.svg?cacheSeconds=2592000)
[![tfsec](https://github.com/BrynardSecurity-terraform/terraform-remote-state-bootstrap/actions/workflows/tfsec.yml/badge.svg)](https://github.com/BrynardSecurity-terraform/terraform-remote-state-bootstrap/actions/workflows/tfsec.yml)
[![Twitter: DevopsPleb](https://img.shields.io/twitter/follow/DevopsPleb.svg?style=social)](https://twitter.com/DevopsPleb)

> Terraform module to bootstrap a Terraform Cloud Workspace for Version Control initiated runs.

## Author

👤 **Ralph Brynard**

* Twitter: [@DevopsPleb](https://twitter.com/DevopsPleb)
* Github: [@RalphBrynard](https://github.com/RalphBrynard)

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.30.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.30.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_organization.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_email"></a> [admin\_email](#input\_admin\_email) | Admin email address. | `string` | n/a | yes |
| <a name="input_collaborator_auth_policy"></a> [collaborator\_auth\_policy](#input\_collaborator\_auth\_policy) | Authentication policy (password or two\_factor\_mandatory). Defaults to password. | `string` | `"password"` | no |
| <a name="input_cost_estimation_enabled"></a> [cost\_estimation\_enabled](#input\_cost\_estimation\_enabled) | Whether or not the cost estimation feature is enabled for all workspaces in the organization. Defaults to true. In a Terraform Cloud organization which does not have Teams & Governance features, this value is always false and cannot be changed. In Terraform Enterprise, Cost Estimation must also be enabled in Site Administration. | `bool` | `true` | no |
| <a name="input_create_organization"></a> [create\_organization](#input\_create\_organization) | Whether or not to create the Terraform cloud organization | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the organization. | `string` | n/a | yes |
| <a name="input_owners_team_saml_role_id"></a> [owners\_team\_saml\_role\_id](#input\_owners\_team\_saml\_role\_id) | The name of the 'owners' team. | `string` | `""` | no |
| <a name="input_send_passing_statuses"></a> [send\_passing\_statuses](#input\_send\_passing\_statuses) | Whether or not to send VCS status updates for untriggered speculative plans. This can be useful if large numbers of untriggered workspaces are exhausting request limits for connected version control service providers like GitHub. Defaults to false. In Terraform Enterprise, this setting has no effect and cannot be changed but is also available in Site Administration. | `bool` | `false` | no |
| <a name="input_session_remember_minutes"></a> [session\_remember\_minutes](#input\_session\_remember\_minutes) | Session expiration. Defaults to 20160. | `number` | `20160` | no |
| <a name="input_session_timeout_minutes"></a> [session\_timeout\_minutes](#input\_session\_timeout\_minutes) | Session timeout after inactivity. Defaults to 20160. | `number` | `20160` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfe_organization_id"></a> [tfe\_organization\_id](#output\_tfe\_organization\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Show your support

Give a ⭐️ if this project helped you!


***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
