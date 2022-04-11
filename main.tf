# Remote State Bootstrap Module -- main.tf
terraform {
    required_providers {
        tfe = {
            version = "~> 0.30.2"
        }
    }
}

#######################################################################
# Fetch remote state data from backend                                #
#######################################################################
data "terraform_remote_state" "backend" {
  backend = "remote"
  config  = {
    organization = var.organization
    workspaces = {
      name = var.workspace
    }
  }
}

#######################################################################
# Init workspace for poc remote state                                 #
#######################################################################
module "poc_id" {
  source = "git::https://github.com/BrynardSecurity-terraform/terraform-random-pet.git"
}

locals {
  workspace_name = "${var.customer_name}-${module.poc_id.random_pet}"
}

resource "tfe_workspace" "this" {
  name  = local.workspace_name
  organization = data.terraform_remote_state.backend.outputs.tfe_organization_name
  execution_mode = "remote"
  tag_names = [
    "${var.customer_name}",
    "${module.poc_id.random_pet}"
  ]
}

resource "tfe_variable_set" "this" {
  name         = local.workspace_name
  depends_on   = [tfe_workspace.this]
  global       = false
  organization = data.terraform_remote_state.backend.outputs.tfe_organization_name
}
