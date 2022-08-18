output "id" {
  description = "The ID of this resource."
  value       = try(aiven_clickhouse_grant.this[0].id, "")
}

output "project" {
  description = "Aiven Cloud Project Name."
  value       = try(aiven_clickhouse_grant.this[0].project, "")
}

output "user" {
  description = "TThe user to grant privileges or roles to."
  value       = try(aiven_clickhouse_grant.this[0].user, "")
}