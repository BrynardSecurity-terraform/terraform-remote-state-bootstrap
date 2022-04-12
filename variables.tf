# Remote State Bootstrap Module -- variables.tf
variable "add_vcs_repo" {
  description = "Whether or not to add a VCS repo to this workspace"
  type        = bool
  default     = false
}

variable "allow_destroy_plan" {
  description = "Whether destroy plans can be queued on the workspace"
  type        = bool
  default     = false
}

variable "auto_apply" {
  description = "Whether to automatically apply changes when a Terraform plan is successful. Defaults to false"
  type        = bool
  default     = false
}

variable "vcs_branch" {
  description = "Branch of the VCS Repository to add. Default is 'main'"
  type        = string
  default     = "main"
}

variable "category" {
  description = "Whether this is a Terraform or environment variable. Available options: terraform or env"
  type        = string
  default     = "terraform"
}

variable "customer_name" {
  description = "POC customer name"
  type        = string
}

variable "description" {
  description = "The description of the variable"
  type        = string
  default     = null
}

variable "description_suffix" {
  description = "Whether to add a suffix to the description of the variable"
  type        = string
  default     = ""
}

variable "hcl" {
  description = "Whether to evaluate the value of the variable as a string of HCL code"
  type        = bool
  default     = false
}

variable "oauth_token_id" {
  description = "The VCS Connection token to use"
  type        = string
  default     = ""
  validation {
    condition = var.oauth_token_id != ""
    error_message = "OAuth Token ID cannot be empty if add_vcs_repo is enabled!"
  }
}

variable "organization" {
  description = "Terraform Cloud organization which has the backend state-file"
  type        = string
}

variable "sensitive" {
  description = "Whether the variable value is sensitive"
  type        = bool
  default     = false
}

variable "variable_set_variable" {
  description = "Whether this variable should be added to a variable set"
  type        = bool
  default     = true
}

variable "vcs_repository" {
  description = "The VCS Repository to add to the workspace"
  type        = string
  default     = ""
  validation {
    condition = var.vcs_repository != ""
    error_message = "VCS Repository cannot be empty if add_vcs_repo is enabled!"
  }
}

variable "working_directory" {
  description = "Working directory of the VCS repository from which TF plans are run"
  type        = string
  default     = "/"
}

variable "workspace" {
  description = "The name of the workspace where the backend state-file is located"
  type        = string
}

variable "workspace_variable" {
  description = "Whether this variable should be attached to a workspace"
  type        = bool
  default     = false
}
