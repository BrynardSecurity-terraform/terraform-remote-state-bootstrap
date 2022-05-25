# This workspace id to test newly added functionality
data "template_file" "tfe_credentials" {
  template = file("${path.module}/credentials.tfrc.json.tpl")
  vars = {
    tfe_token = var.tfe_token
  }
}

resource "local_file" "tfe_credentials" {
  content  = data.template_file.tfe_credentials.rendered
  filename = "./credentials.tfrc.json"
}

module "oauth_client" {
  source                = "../../../tfe_oauth_client"
  depends_on            = [module.tfe_organization_test]
  api_url               = var.api_url
  https_url             = var.https_url
  oauth_token           = var.oauth_token
  organization          = module.tfe_organization_test.tfe_organization_id
  service_provider      = var.service_provider
  tfe_oauth_client_name = var.service_provider
}


module "tfe_workspace_test" {
  source                        = "../../"
  depends_on                    = [module.tfe_organization_test]
  for_each                      = var.workspace
  add_vcs_repo                  = each.value.add_vcs_repo
  agent_pool_id                 = each.value.agent_pool_id
  allow_destroy_plan            = each.value.allow_destroy_plan
  auto_apply                    = each.value.auto_apply
  create_global_variable_set    = each.value.create_global_variable_set
  create_workspace_variable_set = each.value.create_workspace_variable_set
  execution_mode                = each.value.execution_mode
  global_remote_state           = each.value.global_remote_state
  name                          = each.value.name
  oauth_token_id                = module.oauth_client.oauth_token_id
  organization                  = each.value.organization
  queue_all_runs                = each.value.queue_all_runs
  remote_state_consumer_ids     = [each.value.remote_state_consumer_ids]
  speculative_enabled           = each.value.speculative_enabled
  structured_run_output_enabled = each.value.structured_run_output_enabled
  ssh_key_id                    = each.value.ssh_key_id
  terraform_version             = each.value.terraform_version
  tfe_token                     = each.value.tfe_token
  trigger_prefixes              = each.value.trigger_prefixes
  tags                          = each.value.tags
  vcs_repository                = each.value.vcs_repository
  workspace_description         = each.value.workspace_description
  working_directory             = each.value.working_directory
  workspace_variable            = each.value.workspace_variable
}

module "tfe_organization_test" {
  source              = "../../../../"
  name                = var.organization
  admin_email         = var.admin_email
  create_organization = var.create_organization
}

data "tfe_workspace_ids" "add_vcs_repo" {
  tag_names    = ["add_vcs", "true"]
  organization = module.tfe_organization_test.tfe_organization_id
}

module "variable_set" {
  source                   = "../../../tfe_variable_set"
  depends_on               = [module.tfe_organization_test]
  for_each                 = var.variable_set
  create_variable_set      = each.value.create_variable_set
  global                   = each.value.global
  organization             = module.tfe_organization_test.tfe_organization_id
  variable_set_description = each.value.variable_set_description
  variable_set_name        = each.value.variable_set_name
  workspace_ids            = each.value.workspace_ids
}

output "workspace_ids" {
  value = values(data.tfe_workspace_ids.add_vcs_repo)
}
