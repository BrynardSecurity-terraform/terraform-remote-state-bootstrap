# Remote State Bootstrap Module -- variables.tf

variable "admin_email" {
  description = "Admin email address."
  type        = string
}

variable "collaborator_auth_policy" {
  description = "Authentication policy (password or two_factor_mandatory). Defaults to password."
  type        = string
  default     = "password"
  validation {
    condition = contains(["password","two_factor_mandatory"],var.collaborator_auth_policy)
    error_message = "Authentication policy must be one of: password, two_factor_mandatory."
  }
}

variable "create_organization" {
  description = "Whether or not to create the Terraform cloud organization"
  type        = bool
  default     = false
}

variable "name" {
  description = "Name of the organization."
  type        = string
}

variable "owners_team_samle_role_id" {
  description = "The name of the 'owners' team."
  type        = string
  default     = ""
}

variable "send_passing_statuses" {
  description = "Whether or not to send VCS status updates for untriggered speculative plans. This can be useful if large numbers of untriggered workspaces are exhausting request limits for connected version control service providers like GitHub. Defaults to false. In Terraform Enterprise, this setting has no effect and cannot be changed but is also available in Site Administration."
  type        = bool
  default     = false
}

variable "session_remember_minutes" {
  description = "Session expiration. Defaults to 20160."
  type        = number
  default     = 20160
}

variable "session_timeout_minutes" {
  description = "Session timeout after inactivity. Defaults to 20160."
  type        = number
  default     = 20160
}
