output "customer_name" {
  value = var.customer_name
}

output "poc_id" {
  value = module.poc_id.random_pet
}
