variable "tfe_oauth_client_name" {
  description = "Terraform VCS OAuth client name"
  type        = string
  default     = "this"
}

variable "api_url" {
  description = "VCS API URL"
  type        = string
  default     = "https://api.github.com"
}

variable "https_url" {
  description = "VCS HTTPS URL"
  type        = string
  default     = "https://github.com"
}

variable "oauth_token" {
  description = "VCS provider OAuth token"
  type        = string
  default     = ""
  sensitive   = true
}

variable "organization" {
  description = "Terraform cloud organization name"
  type        = string
  default     = "this"
}

variable "service_provider" {
  description = "VCS Service provider"
  type        = string
  default     = "github"
}
