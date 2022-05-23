# tfe_workspace

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.1.1 |
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.31.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [null_resource.tfe_oauth_token](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [tfe_oauth_client.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/oauth_client) | resource |
| [tfe_variable_set.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set) | resource |
| [tfe_workspace.this](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace) | resource |
| [template_file.tfe_oauth_token](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_add_vcs_repo"></a> [add\_vcs\_repo](#input\_add\_vcs\_repo) | Whether or not to add a VCS repo to this workspace | `bool` | `false` | no |
| <a name="input_agent_pool_id"></a> [agent\_pool\_id](#input\_agent\_pool\_id) | The ID of an agent pool to assign to the workspace. Requires execution\_mode to be set to agent. This value must not be provided if execution\_mode is set to any other value or if operations is provided. | `string` | `""` | no |
| <a name="input_agent_pool_name"></a> [agent\_pool\_name](#input\_agent\_pool\_name) | (Required) Name of the agent pool. | `string` | `""` | no |
| <a name="input_allow_destroy_plan"></a> [allow\_destroy\_plan](#input\_allow\_destroy\_plan) | Whether destroy plans can be queued on the workspace | `bool` | `false` | no |
| <a name="input_api_url"></a> [api\_url](#input\_api\_url) | API URL of the Version Control Provider | `string` | `""` | no |
| <a name="input_auto_apply"></a> [auto\_apply](#input\_auto\_apply) | Whether to automatically apply changes when a Terraform plan is successful. Defaults to false | `bool` | `false` | no |
| <a name="input_create_variable_set"></a> [create\_variable\_set](#input\_create\_variable\_set) | Whether or not to create a variable set | `bool` | `false` | no |
| <a name="input_execution_mode"></a> [execution\_mode](#input\_execution\_mode) | Which execution mode to use. Available options: remote, local, or agent | `string` | `"remote"` | no |
| <a name="input_file_triggers_enabled"></a> [file\_triggers\_enabled](#input\_file\_triggers\_enabled) | Whether to filter runs based on the changed files in a VCS push. Defaults to true. If enabled, the working directory and trigger prefixes describe a set of paths which must contain changes for a VCS push to trigger a run. If disabled, any push will trigger a run. | `bool` | `true` | no |
| <a name="input_global"></a> [global](#input\_global) | Should the variable set be available globally or only to specific workspaces | `bool` | `false` | no |
| <a name="input_global_remote_state"></a> [global\_remote\_state](#input\_global\_remote\_state) | (Optional) Whether the workspace allows all workspaces in the organization to access its state data during runs. If false, then only specifically approved workspaces can access its state (remote\_state\_consumer\_ids). | `bool` | `false` | no |
| <a name="input_https_url"></a> [https\_url](#input\_https\_url) | HTTP URL of the VCS provider | `string` | `""` | no |
| <a name="input_name"></a> [name](#input\_name) | Workspace name | `string` | n/a | yes |
| <a name="input_oauth_token"></a> [oauth\_token](#input\_oauth\_token) | OAuth Token String provided by the VCS provider | `string` | `""` | no |
| <a name="input_oauth_token_id"></a> [oauth\_token\_id](#input\_oauth\_token\_id) | The VCS Connection token to use | `string` | `""` | no |
| <a name="input_organization"></a> [organization](#input\_organization) | Terraform Cloud organization which has the backend state-file | `string` | n/a | yes |
| <a name="input_queue_all_runs"></a> [queue\_all\_runs](#input\_queue\_all\_runs) | (Optional) Whether the workspace should start automatically performing runs immediately after its creation. Defaults to true. When set to false, runs triggered by a webhook (such as a commit in VCS) will not be queued until at least one run has been manually queued. Note: This default differs from the Terraform Cloud API default, which is false. The provider uses true as any workspace provisioned with false would need to then have a run manually queued out-of-band before accepting webhooks. | `bool` | `false` | no |
| <a name="input_remote_state_consumer_ids"></a> [remote\_state\_consumer\_ids](#input\_remote\_state\_consumer\_ids) | (Optional) The set of workspace IDs set as explicit remote state consumers for the given workspace. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_service_provider"></a> [service\_provider](#input\_service\_provider) | VCS provider being connected with | `string` | `"github"` | no |
| <a name="input_speculative_enabled"></a> [speculative\_enabled](#input\_speculative\_enabled) | Optional) Whether this workspace allows speculative plans. Defaults to true. Setting this to false prevents Terraform Cloud or the Terraform Enterprise instance from running plans on pull requests, which can improve security if the VCS repository is public or includes untrusted contributors. | `bool` | `true` | no |
| <a name="input_ssh_key_id"></a> [ssh\_key\_id](#input\_ssh\_key\_id) | (Optional) The ID of an SSH key to assign to the workspace. | `string` | `""` | no |
| <a name="input_structured_run_output_enabled"></a> [structured\_run\_output\_enabled](#input\_structured\_run\_output\_enabled) | (Optional) Whether this workspace should show output from Terraform runs using the enhanced UI when available. Defaults to true. Setting this to false ensures that all runs in this workspace will display their output as text logs. | `bool` | `true` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags to apply to workspace | `list(string)` | `[]` | no |
| <a name="input_terraform_version"></a> [terraform\_version](#input\_terraform\_version) | (Optional) The version of Terraform to use for this workspace. This can be either an exact version or a version constraint (like ~> 1.0.0); if you specify a constraint, the workspace will always use the newest release that meets that constraint. Defaults to the latest available version. | `string` | `"1.2.0"` | no |
| <a name="input_tfe_oauth_client_name"></a> [tfe\_oauth\_client\_name](#input\_tfe\_oauth\_client\_name) | Display name of the OAuth Client | `string` | `""` | no |
| <a name="input_tfe_token"></a> [tfe\_token](#input\_tfe\_token) | Token from the TFE account for the TFE provider API access | `any` | n/a | yes |
| <a name="input_trigger_prefixes"></a> [trigger\_prefixes](#input\_trigger\_prefixes) | (Optional) List of repository-root-relative paths which describe all locations to be tracked for changes. | `list(string)` | <pre>[<br>  ""<br>]</pre> | no |
| <a name="input_vcs_repository"></a> [vcs\_repository](#input\_vcs\_repository) | The VCS Repository to add to the workspace | `string` | `""` | no |
| <a name="input_working_directory"></a> [working\_directory](#input\_working\_directory) | Working directory of the VCS repository from which TF plans are run | `string` | `"/"` | no |
| <a name="input_workspace_description"></a> [workspace\_description](#input\_workspace\_description) | Description of the workspace | `string` | `""` | no |
| <a name="input_workspace_variable"></a> [workspace\_variable](#input\_workspace\_variable) | Whether this variable should be attached to a workspace | `bool` | `false` | no |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
