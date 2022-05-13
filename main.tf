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
resource "tfe_organization" "this" {
  count = var.create_organization ? 1 : 0
  name  = var.name
  email = var.admin_email
}
