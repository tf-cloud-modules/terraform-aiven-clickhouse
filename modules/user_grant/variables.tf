variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "project" {
  description = "Aiven Cloud Project Name."
  type        = string
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "role_grants" {
  description = "Configuration to grant a role."
  type        = list(any)
  default     = []
}

variable "user" {
  description = "The user to grant privileges or roles to."
  type        = string
  default     = ""
}