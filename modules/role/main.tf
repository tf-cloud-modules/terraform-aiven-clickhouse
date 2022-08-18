resource "aiven_clickhouse_role" "this" {
  count        = var.create ? 1 : 0
  project      = var.project
  service_name = var.service_name
  role         = var.role
}