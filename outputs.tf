output "customer_name" {
  value = var.customer_name
}

output "workspace_name" {
  value = local.workspace_name
}

output "random_pet" {
  value = module.random_pet.random_pet
}

output "random_id" {
  value = module.random_id.random_id
}

output "workspace_id" {
  value = tfe_workspace.this.id
}
