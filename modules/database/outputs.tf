output "id" {
  description = "The ID of this resource."
  value       = try(aiven_clickhouse_database.this[0].id, "")
}

output "project" {
  description = "Aiven Cloud Project Name."
  value       = try(aiven_clickhouse_database.this[0].project, "")
}

output "service_name" {
  description = "Specifies the actual name of the service."
  value       = try(aiven_clickhouse_database.this[0].service_name, "")
}

output "name" {
  description = "The name of the service database."
  value       = try(aiven_clickhouse_database.this[0].name, "")
}