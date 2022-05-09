# Welcome to tfe_variables 👋
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
| [tfe_variable.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_category"></a> [category](#input\_category) | Whether this is a Terraform or environment variable. Available options: terraform or env | `string` | `"terraform"` | no |
| <a name="input_create_variable"></a> [create\_variable](#input\_create\_variable) | Whether this variable should be created | `bool` | `false` | no |
| <a name="input_customer_name"></a> [customer\_name](#input\_customer\_name) | POC customer name | `string` | `"Acme Co."` | no |
| <a name="input_description"></a> [description](#input\_description) | The description of the variable | `string` | `null` | no |
| <a name="input_description_suffix"></a> [description\_suffix](#input\_description\_suffix) | Whether to add a suffix to the description of the variable | `string` | `""` | no |
| <a name="input_hcl"></a> [hcl](#input\_hcl) | Whether to evaluate the value of the variable as a string of HCL code | `bool` | `false` | no |
| <a name="input_key"></a> [key](#input\_key) | Name of the variable | `string` | n/a | yes |
| <a name="input_sensitive"></a> [sensitive](#input\_sensitive) | Whether the variable value is sensitive | `bool` | `false` | no |
| <a name="input_value"></a> [value](#input\_value) | Value of the variable | `string` | n/a | yes |
| <a name="input_variable_set"></a> [variable\_set](#input\_variable\_set) | Whether this variable should be added to a variable set | `bool` | `true` | no |
| <a name="input_workspace_id"></a> [workspace\_id](#input\_workspace\_id) | Workspace ID for the variable | `string` | `""` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
