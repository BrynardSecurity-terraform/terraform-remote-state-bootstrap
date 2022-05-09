# Remote State Bootstrap Module -- main.tf
terraform {
  required_providers {
    tfe = {
      version = "~> 0.30.2"
    }
  }
}

#######################################################################
# Init workspace for poc remote state                                 #
#######################################################################

resource "tfe_workspace" "this" {
  name               = var.name
  organization       = var.organization
  execution_mode     = var.execution_mode
  allow_destroy_plan = var.allow_destroy_plan
  auto_apply         = var.auto_apply
  working_directory  = var.working_directory
  description        = var.workspace_description

  dynamic "vcs_repo" {
    for_each = var.add_vcs_repo ? [1] : []
    content {
      identifier     = var.vcs_repository
      branch         = var.vcs_branch
      oauth_token_id = var.oauth_token_id
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
