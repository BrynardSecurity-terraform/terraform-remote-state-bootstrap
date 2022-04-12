# Remote State Bootstrap Module -- variables.tf
variable "add_vcs_repo" {
  description = "Whether or not to add a VCS repo to this workspace"
  type        = bool
  default     = false
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

variable "working_directory" {
  description = "Working directory of the VCS repository from which TF plans are run"
  type        = string
  default     = ""
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
