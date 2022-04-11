# tfe variables sub-module -- main.tf
resource "tfe_variable" "variable_set_variable" {
  count           = var.variable_set_variable ? 1 : 0
  key             = var.key
  value           = var.value
  description  = try(trimspace(format("%s %s", var.description, var.description_suffix)), null)
  category        = var.category
  sensitive       = var.sensitive
  hcl             = var.hcl
  variable_set_id = var.variable_st_id
}

resource "tfe_variable" "workspace_variable" {
  count           = var.workspace_variable ? 1 : 0
  key             = var.key
  value           = var.value
  description  = try(trimspace(format("%s %s", var.description, var.description_suffix)), null)
  category        = var.category
  hcl             = var.hcl
  workspace_id    = var.workspace_id
}
