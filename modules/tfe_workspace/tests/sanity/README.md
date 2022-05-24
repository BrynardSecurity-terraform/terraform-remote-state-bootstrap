# sanity

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_local"></a> [local](#provider\_local) | 2.2.3 |
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_oauth_client"></a> [oauth\_client](#module\_oauth\_client) | ../../../tfe_oauth_client | n/a |
| <a name="module_tfe_organization_test"></a> [tfe\_organization\_test](#module\_tfe\_organization\_test) | ../../../../ | n/a |
| <a name="module_tfe_workspace_test"></a> [tfe\_workspace\_test](#module\_tfe\_workspace\_test) | ../../ | n/a |

## Resources

| Name | Type |
|------|------|
| [local_file.tfe_credentials](https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file) | resource |
| [template_file.tfe_credentials](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_email"></a> [admin\_email](#input\_admin\_email) | Terraform Cloud Organization Admin Email Address | `string` | n/a | yes |
| <a name="input_api_url"></a> [api\_url](#input\_api\_url) | VCS API URL | `string` | `"https://api.github.com"` | no |
| <a name="input_create_organization"></a> [create\_organization](#input\_create\_organization) | Create TFE Organization | `bool` | `true` | no |
| <a name="input_https_url"></a> [https\_url](#input\_https\_url) | VCS HTTPS URL | `string` | `"https://github.com"` | no |
| <a name="input_oauth_token"></a> [oauth\_token](#input\_oauth\_token) | VCS API Token | `string` | n/a | yes |
| <a name="input_organization"></a> [organization](#input\_organization) | Terraform Cloud Organization | `string` | n/a | yes |
| <a name="input_service_provider"></a> [service\_provider](#input\_service\_provider) | VCS Service Provider | `string` | `"github"` | no |
| <a name="input_tfe_token"></a> [tfe\_token](#input\_tfe\_token) | Terraform API token | `string` | n/a | yes |
| <a name="input_workspace"></a> [workspace](#input\_workspace) | Mapped variables for workspace testing | <pre>map(object({<br>    add_vcs_repo                  = bool<br>    agent_pool_id                 = string<br>    allow_destroy_plan            = bool<br>    auto_apply                    = bool<br>    create_global_variable_set    = bool<br>    create_workspace_variable_set = bool<br>    execution_mode                = string<br>    file_triggers_enabled         = bool<br>    global_remote_state           = bool<br>    global_vars                   = bool<br>    name                          = string<br>    oauth_token_id                = string<br>    organization                  = string<br>    queue_all_runs                = bool<br>    remote_state_consumer_ids     = string<br>    speculative_enabled           = bool<br>    structured_run_output_enabled = bool<br>    ssh_key_id                    = string<br>    terraform_version             = string<br>    tfe_token                     = string<br>    trigger_prefixes              = list(string)<br>    tags                          = list(string)<br>    variable_set_name             = string<br>    vcs_branch                    = string<br>    vcs_repository                = string<br>    workspace_description         = string<br>    working_directory             = string<br>    workspace_ids                 = string<br>    workspace_variable            = bool<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tfe_organization_id"></a> [tfe\_organization\_id](#output\_tfe\_organization\_id) | n/a |
| <a name="output_tfe_workspace_test"></a> [tfe\_workspace\_test](#output\_tfe\_workspace\_test) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
