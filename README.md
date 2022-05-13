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
| <a name="input_admin_email"></a> [admin\_email](#input\_admin\_email) | Admin email address | `string` | n/a | yes |
| <a name="input_create_organization"></a> [create\_organization](#input\_create\_organization) | Whether or not to create the Terraform cloud organization | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Terraform organization name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfe_organization_id"></a> [tfe\_organization\_id](#output\_tfe\_organization\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Show your support

Give a ⭐️ if this project helped you!


***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
