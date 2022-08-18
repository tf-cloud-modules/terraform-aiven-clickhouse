output "id" {
  description = "The ID of this resource."
  value       = try(aiven_clickhouse_user.this[0].id, "")
}

output "project" {
  description = "Aiven Cloud Project Name."
  value       = try(aiven_clickhouse_user.this[0].project, "")
}

output "service_name" {
  description = "Specifies the actual name of the service."
  value       = try(aiven_clickhouse_user.this[0].service_name, "")
}

output "username" {
  description = "The actual name of the Clickhouse user."
  value       = try(aiven_clickhouse_user.this[0].username, "")
}

output "password" {
  description = "The password of the Clickhouse User."
  sensitive   = true
  value       = try(aiven_clickhouse_user.this[0].password, "")
}