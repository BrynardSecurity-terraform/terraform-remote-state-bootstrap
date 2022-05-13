# Remote State Bootstrap Module -- variables.tf

variable "admin_email" {
  description = "Admin email address"
  type        = string
}

variable "create_organization" {
  description = "Whether or not to create the Terraform cloud organization"
  type        = bool
  default     = false
}

variable "name" {
  description = "Terraform organization name"
  type        = string
}
