# tfe_variable_set

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.30.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_variable_set"></a> [create\_variable\_set](#input\_create\_variable\_set) | Whether to create the variable set | `bool` | `false` | no |
| <a name="input_global"></a> [global](#input\_global) | Whether the variable set is a global variable or workspace variable | `bool` | `true` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | (Required) Name of the organization. | `string` | n/a | yes |
| <a name="input_variable_set_description"></a> [variable\_set\_description](#input\_variable\_set\_description) | (Optional) Description of the variable set. | `string` | `null` | no |
| <a name="input_variable_set_name"></a> [variable\_set\_name](#input\_variable\_set\_name) | (Required) Name of the variable set. | `string` | n/a | yes |
| <a name="input_workspace_ids"></a> [workspace\_ids](#input\_workspace\_ids) | (Optional) IDs of the workspaces that use the variable set. Must not be set if global is set. | `list(string)` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfe_variable_set_id"></a> [tfe\_variable\_set\_id](#output\_tfe\_variable\_set\_id) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
