resource "tfe_variable_set" "global" {
  count        = var.is_global ? 1 : 0
  name         = var.variable_set_name
  organization = var.organization
  description  = var.variable_set_description
  global       = true
}

resource "tfe_variable_set" "workspace" {
  count         = var.is_global ? 0 : 1
  name          = var.variable_set_name
  organization  = var.organization
  description   = var.variable_set_description
  workspace_ids = var.workspace_ids
}
