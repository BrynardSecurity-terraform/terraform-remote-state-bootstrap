data "tfe_workspace_ids" "this" {
  names        = var.remote_state_consumer_ids
  organization = var.organization
}

data "tfe_agent_pool" "this" {
  name         = var.agent_pool_name
  organization = var.organization
}

locals {
  remote_state_consumer_ids = concat(["${data.tfe_workspace_ids.this.id}"])
  agent_pool_id             = data.tfe_agent_pool.this.id
}

resource "tfe_workspace" "this" {
  agent_pool_id                 = local.agent_pool_id ? var.execution_mode == "agent" : null
  allow_destroy_plan            = var.allow_destroy_plan
  auto_apply                    = var.auto_apply
  description                   = var.workspace_description
  execution_mode                = var.execution_mode
  file_triggers_enabled         = var.file_triggers_enabled
  global_remote_state           = var.global_remote_state
  name                          = var.name
  organization                  = var.organization
  queue_all_runs                = var.queue_all_runs
  remote_state_consumer_ids     = [data.tfe_workspace_ids.this.id ? var.global_remote_state == true : null]
  speculative_enabled           = var.speculative_enabled
  structured_run_output_enabled = var.structured_run_output_enabled
  ssh_key_id                    = var.ssh_key_id
  terraform_version             = var.terraform_version
  trigger_prefixes              = var.trigger_prefixes
  working_directory             = var.working_directory

  dynamic "vcs_repo" {
    for_each = var.add_vcs_repo ? [1] : []
    content {
      identifier         = var.vcs_repository
      branch             = var.vcs_branch
      oauth_token_id     = var.oauth_token_id
      ingress_submodules = var.ingress_submodules
    }
  }

  tag_names = var.tags
}

resource "tfe_variable_set" "this" {
  count        = var.create_variable_set ? 1 : 0
  name         = var.name
  global       = var.global
  organization = var.organization
}
