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
module "random_pet" {
  source = "git::https://github.com/BrynardSecurity-terraform/terraform-random-pet.git"
}

module "random_id" {
  source = "git::https://github.com/BrynardSecurity-terraform/terraform-random-id.git"
}

locals {
  workspace_name  = "${module.random_pet.random_pet}_${module.random_id.random_id}"
  customer_name   = lower(replace("${var.customer_name}", " ", "_"))
  vcs_repository  = var.vcs_repository
  vcs_branch      = var.vcs_branch
}

resource "tfe_workspace" "this" {
  name                = local.workspace_name
  organization        = var.organization
  execution_mode      = "remote"
  allow_destroy_plan  = var.allow_destroy_plan
  auto_apply          = var.auto_apply
  working_directory   = var.working_directory

  dynamic "vcs_repo" {
    for_each = var.add_vcs_repo ? [1] : []
    content {
      identifier        = var.vcs_repository
      branch            = var.vcs_branch
      oauth_token_id    = var.oauth_token_id
    }
  }

  tag_names = [
    "${local.customer_name}",
    "${module.random_pet.random_pet}",
    "${module.random_id.random_id}"
  ]
}

resource "tfe_variable_set" "this" {
  name         = local.workspace_name
  depends_on   = [tfe_workspace.this]
  global       = false
  organization = var.organization
}
