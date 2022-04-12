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
  workspace_name = "${module.random_pet.random_pet}_${module.random_id.random_id}"
  customer_name = lower(replace("${var.customer_name}", " ", "_"))
}

resource "tfe_workspace" "this" {
  name  = local.workspace_name
  organization =  var.organization
  execution_mode = "remote"
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
