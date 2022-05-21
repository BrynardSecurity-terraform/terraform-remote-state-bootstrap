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

variable "tfe_token" {
  description = "Terraform API token"
  type        = string
}

variable "workspace" {
  description = "Mapped variables for workspace testing"
  type = map(object({
    add_vcs_repo                  = bool
    agent_pool_id                 = string
    allow_destroy_plan            = bool
    auto_apply                    = bool
    create_variable_set           = bool
    execution_mode                = string
    file_triggers_enabled         = bool
    global_remote_state           = bool
    name                          = string
    oauth_token_id                = string
    organization                  = string
    queue_all_runs                = bool
    remote_state_consumer_ids     = string
    speculative_enabled           = bool
    structured_run_output_enabled = bool
    ssh_key_id                    = string
    terraform_version             = string
    tfe_token                     = string
    trigger_prefixes              = list(string)
    tags                          = list(string)
    vcs_repository                = string
    workspace_description         = string
    working_directory             = string
    workspace_variable            = bool
  }))
}

module "tfe_workspace_test" {
  source                        = "../../"
  depends_on                    = [module.tfe_organization_test]
  for_each                      = var.workspace
  add_vcs_repo                  = each.value.add_vcs_repo
  agent_pool_id                 = each.value.agent_pool_id
  allow_destroy_plan            = each.value.allow_destroy_plan
  auto_apply                    = each.value.auto_apply
  create_variable_set           = each.value.create_variable_set
  execution_mode                = each.value.execution_mode
  global_remote_state           = each.value.global_remote_state
  name                          = each.value.name
  oauth_token_id                = each.value.oauth_token_id
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

variable "organization" {
  description = "Mapped variables for organization testing"
  type = map(object({
    name                = string
    email               = string
    create_organization = bool
  }))
}

module "tfe_organization_test" {
  source              = "../../../../"
  for_each            = var.organization
  name                = each.value.name
  admin_email         = each.value.email
  create_organization = each.value.create_organization
}

output "tfe_organization_id" {
  value = tomap({
    for k, i in module.tfe_organization_test : k => i.tfe_organization_id
  })
}

output "tfe_workspace_test" {
  value = tomap({
    for k, i in module.tfe_workspace_test : k => i.tfe_workspace_test
  })
}
