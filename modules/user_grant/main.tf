resource "aiven_clickhouse_grant" "this" {
  count        = var.create ? 1 : 0
  project      = var.project
  service_name = var.service_name
  user         = var.user

  dynamic "role_grant" {
    for_each = var.role_grants
    content {
      role = lookup(role_grant.value, "role", null)
    }
  }
}