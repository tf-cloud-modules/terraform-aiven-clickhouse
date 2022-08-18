resource "aiven_clickhouse_grant" "this" {
  count        = var.create ? 1 : 0
  project      = var.project
  service_name = var.service_name
  role         = var.role

  dynamic "privilege_grant" {
    for_each = var.privilege_grants
    content {
      database   = lookup(privilege_grant.value, "database", null)
      column     = lookup(privilege_grant.value, "column", null)
      privilege  = lookup(privilege_grant.value, "privilege", null)
      table      = lookup(privilege_grant.value, "table", null)
      with_grant = lookup(privilege_grant.value, "with_grant", null)
    }
  }
}