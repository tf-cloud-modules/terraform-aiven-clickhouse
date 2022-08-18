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

variable "privilege_grants" {
  description = "Configuration to grant a privilege."
  type        = list(any)
  default     = []
}

variable "role" {
  description = "The role to grant privileges or roles to."
  type        = string
  default     = ""
}