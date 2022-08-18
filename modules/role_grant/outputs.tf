output "id" {
  description = "The ID of this resource."
  value       = try(aiven_clickhouse_grant.this[0].id, "")
}

output "project" {
  description = "Aiven Cloud Project Name."
  value       = try(aiven_clickhouse_grant.this[0].project, "")
}

output "service_name" {
  description = "Specifies the actual name of the service."
  value       = try(aiven_clickhouse_grant.this[0].service_name, "")
}

output "role" {
  description = "The role that is to be created."
  value       = try(aiven_clickhouse_grant.this[0].role, "")
}