# Welcome to Terraform Remote State Bootstrapping Module 👋
![Version](https://img.shields.io/badge/version-v0.0.3-blue.svg?cacheSeconds=2592000)
[![Twitter: DevopsPleb](https://img.shields.io/twitter/follow/DevopsPleb.svg?style=social)](https://twitter.com/DevopsPleb)

> Terraform module to bootstrap a Terraform Cloud Workspace for Version Control initiated runs.

## Author

👤 **Ralph Brynard**

* Twitter: [@DevopsPleb](https://twitter.com/DevopsPleb)
* Github: [@RalphBrynard](https://github.com/RalphBrynard)

## Show your support

Give a ⭐️ if this project helped you!


***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
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
| [tfe_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_vcs_repo"></a> [add\_vcs\_repo](#input\_add\_vcs\_repo) | Whether or not to add a VCS repo to this workspace | `bool` | `false` | no |
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Whether destroy plans can be queued on the workspace | `bool` | `false` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Whether to automatically apply changes when a Terraform plan is successful. Defaults to false | `bool` | `false` | no |
| <a name="input_category"></a> [category](#input\_category) | Whether this is a Terraform or environment variable. Available options: terraform or env | `string` | `"terraform"` | no |
| <a name="input_create_variable_set"></a> [create\_variable\_set](#input\_create\_variable\_set) | Whether or not to create a variable set | `bool` | `false` | no |
| <a name="input_customer_name"></a> [customer\_name](#input\_customer\_name) | POC customer name | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description of the variable | `string` | `null` | no |
| <a name="input_description_suffix"></a> [description\_suffix](#input\_description\_suffix) | Whether to add a suffix to the description of the variable | `string` | `""` | no |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | Which execution mode to use. Available options: remote, local, or agent | `string` | `"remote"` | no |
| <a name="input_global"></a> [global](#input\_global) | Should the variable set be available globally or only to specific workspaces | `bool` | `false` | no |
| <a name="input_hcl"></a> [hcl](#input\_hcl) | Whether to evaluate the value of the variable as a string of HCL code | `bool` | `false` | no |
| <a name="input_name"></a> [name](#input\_name) | Workspace name | `string` | n/a | yes |
| <a name="input_oauth_token_id"></a> [oauth\_token\_id](#input\_oauth\_token\_id) | The VCS Connection token to use | `string` | `""` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Terraform Cloud organization which has the backend state-file | `string` | n/a | yes |
| <a name="input_sensitive"></a> [sensitive](#input\_sensitive) | Whether the variable value is sensitive | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to workspace | `list(string)` | `[]` | no |
| <a name="input_variable_set"></a> [variable\_set](#input\_variable\_set) | Whether this variable should be added to a variable set | `bool` | `true` | no |
| <a name="input_vcs_branch"></a> [vcs\_branch](#input\_vcs\_branch) | Branch of the VCS Repository to add. Default is 'main' | `string` | `"main"` | no |
| <a name="input_vcs_repository"></a> [vcs\_repository](#input\_vcs\_repository) | The VCS Repository to add to the workspace | `string` | `""` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | Working directory of the VCS repository from which TF plans are run | `string` | `"/"` | no |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | The name of the workspace where the backend state-file is located | `string` | n/a | yes |
| <a name="input_workspace_description"></a> [workspace\_description](#input\_workspace\_description) | Description of the workspace | `string` | `""` | no |
| <a name="input_workspace_variable"></a> [workspace\_variable](#input\_workspace\_variable) | Whether this variable should be attached to a workspace | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_repository"></a> [repository](#output\_repository) | n/a |
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
