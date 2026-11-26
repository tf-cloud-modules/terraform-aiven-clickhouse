variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "cloud_name" {
  description = "Defines where the cloud provider and region where the service is hosted in."
  type        = string
  default     = "aws-us-east-1"
}

variable "cmk_id" {
  description = "UUID of the Customer Managed Key (CMK) used to apply bring your own key (BYOK) encryption to this service's data at rest."
  type        = string
  default     = null
}

variable "maintenance_window_dow" {
  description = "Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc."
  type        = string
  default     = "thursday"
}

variable "maintenance_window_time" {
  description = "Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format."
  type        = string
  default     = "01:00:00"
}

variable "plan" {
  description = "Defines what kind of computing resources are allocated for the service."
  type        = string
  default     = "hobbyist"
}

variable "project" {
  description = "Aiven Cloud Project Name"
  type        = string
}

variable "project_vpc_id" {
  description = "Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC."
  type        = string
  default     = null
}

variable "static_ips" {
  description = "Static IPs that are going to be associated with this service."
  type        = list(string)
  default     = []
}

variable "service_name" {
  description = "Specifies the actual name of the service."
  type        = string
}

variable "tags" {
  description = "List of the service tags."
  type        = list(any)
  default     = []
}

variable "tech_emails" {
  description = "The email addresses for service contacts, who will receive important alerts and updates about this service."
  type        = list(any)
  default     = []
}

variable "termination_protection" {
  description = "Prevents the service from being deleted."
  type        = bool
  default     = false
}

variable "project_to_fork_from" {
  description = "Name of another project to fork a service from."
  type        = string
  default     = ""
}

variable "service_to_fork_from" {
  description = "Name of another service to fork from."
  type        = string
  default     = ""
}

variable "service_integrations" {
  description = "Service integrations to specify when creating a service."
  type        = list(any)
  default     = []
}

variable "ip_filter_object" {
  description = "Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'."
  type        = list(any)
  default = [
    {
      network = "0.0.0.0/0"
    }
  ]
}

variable "backup_hour" {
  description = "The hour of day (in UTC) when backup for the service is started. New backup is only started if previous backup has already completed."
  type        = number
  default     = null
}

variable "backup_minute" {
  description = "The minute of an hour when backup for the service is started. New backup is only started if previous backup has already completed."
  type        = number
  default     = null
}

variable "clickhouse_version" {
  description = "ClickHouse major version. Defaults to 26.3, the latest version currently available on Aiven."
  type        = string
  default     = "26.3"
}

variable "enable_ipv6" {
  description = "Register AAAA DNS records for the service, and allow IPv6 packets to service ports."
  type        = bool
  default     = null
}

variable "ip_filter_string" {
  description = "Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'."
  type        = list(string)
  default     = null
}

variable "recovery_basebackup_name" {
  description = "Name of the basebackup to restore in forked service."
  type        = string
  default     = null
}

variable "service_log" {
  description = "Store logs for the service so that they are available in the HTTP API and console."
  type        = bool
  default     = null
}

variable "tiered_storage_move_factor" {
  description = "The percentage of free disk space required on local storage before data is moved to object storage. A value of 0.2 means data is moved when local storage has less than 20% free space."
  type        = number
  default     = null
}

variable "public_access_clickhouse" {
  description = "Allow clients to connect to clickhouse from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_clickhouse_arrowflight" {
  description = "Allow clients to connect to clickhouse_arrowflight from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_clickhouse_https" {
  description = "Allow clients to connect to clickhouse_https from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_clickhouse_mysql" {
  description = "Allow clients to connect to clickhouse_mysql from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "public_access_prometheus" {
  description = "Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network."
  type        = bool
  default     = false
}

variable "private_access_clickhouse" {
  description = "Allow clients to connect to clickhouse with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations."
  type        = bool
  default     = false
}

variable "private_access_clickhouse_arrowflight" {
  description = "Allow clients to connect to clickhouse_arrowflight with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations."
  type        = bool
  default     = false
}

variable "private_access_clickhouse_https" {
  description = "Allow clients to connect to clickhouse_https with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations."
  type        = bool
  default     = false
}

variable "private_access_clickhouse_mysql" {
  description = "Allow clients to connect to clickhouse_mysql with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations."
  type        = bool
  default     = false
}

variable "private_access_prometheus" {
  description = "Allow clients to connect to prometheus with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations."
  type        = bool
  default     = false
}

variable "privatelink_clickhouse" {
  description = "Enable clickhouse."
  type        = bool
  default     = false
}

variable "privatelink_clickhouse_arrowflight" {
  description = "Enable clickhouse_arrowflight."
  type        = bool
  default     = false
}

variable "privatelink_clickhouse_https" {
  description = "Enable clickhouse_https."
  type        = bool
  default     = false
}

variable "privatelink_clickhouse_mysql" {
  description = "Enable clickhouse_mysql."
  type        = bool
  default     = false
}

variable "privatelink_prometheus" {
  description = "Enable prometheus."
  type        = bool
  default     = false
}
