resource "aiven_clickhouse_database" "this" {
  count                  = var.create ? 1 : 0
  project                = var.project
  service_name           = var.service_name
  name                   = var.name
  termination_protection = var.termination_protection
}