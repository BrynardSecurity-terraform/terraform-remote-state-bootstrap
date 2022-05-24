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


variable "service_provider" {
  description = "VCS Service Provider"
  type        = string
  default     = "github"
}

variable "admin_email" {
  description = "Terraform Cloud Organization Admin Email Address"
  type        = string
}

variable "create_organization" {
  description = "Create TFE Organization"
  type        = bool
  default     = true
}

variable "oauth_token" {
  description = "VCS API Token"
  type        = string
  sensitive   = true
}

variable "organization" {
  description = "Terraform Cloud Organization"
  type        = string
}

variable "tfe_token" {
  description = "Terraform API token"
  type        = string
}


variable "workspace" {
  description = "Mapped variables for workspace testing"
  type = map(object({
    add_vcs_repo                  = bool
    agent_pool_id                 = string
    allow_destroy_plan            = bool
    auto_apply                    = bool
    create_global_variable_set    = bool
    create_workspace_variable_set = bool
    execution_mode                = string
    file_triggers_enabled         = bool
    global_remote_state           = bool
    global_vars                   = bool
    name                          = string
    oauth_token_id                = string
    organization                  = string
    queue_all_runs                = bool
    remote_state_consumer_ids     = string
    speculative_enabled           = bool
    structured_run_output_enabled = bool
    ssh_key_id                    = string
    terraform_version             = string
    tfe_token                     = string
    trigger_prefixes              = list(string)
    tags                          = list(string)
    variable_set_name             = string
    vcs_branch                    = string
    vcs_repository                = string
    workspace_description         = string
    working_directory             = string
    workspace_ids                 = string
    workspace_variable            = bool
  }))
}
