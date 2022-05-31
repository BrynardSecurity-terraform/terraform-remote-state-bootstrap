data "tfe_variable_set" "this" {
  name         = var.variable_set_name
  organization = var.organization
}

output "tfe_variable_set_id" {
  value = data.tfe_variable_set.this.id
}

output "tfe_variable_set_name" {
  value = data.tfe_variable_set.this.name
}
