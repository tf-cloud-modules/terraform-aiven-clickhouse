resource "aiven_clickhouse" "this" {
  count                   = var.create ? 1 : 0
  cloud_name              = var.cloud_name
  cmk_id                  = var.cmk_id
  maintenance_window_dow  = var.maintenance_window_dow
  maintenance_window_time = var.maintenance_window_time
  plan                    = var.plan
  project                 = var.project
  project_vpc_id          = var.project_vpc_id
  static_ips              = var.static_ips
  service_name            = var.service_name
  termination_protection  = var.termination_protection

  clickhouse_user_config {
    backup_hour                = var.backup_hour
    backup_minute              = var.backup_minute
    clickhouse_version         = var.clickhouse_version
    enable_ipv6                = var.enable_ipv6
    ip_filter_string           = var.ip_filter_string
    project_to_fork_from       = var.project_to_fork_from
    recovery_basebackup_name   = var.recovery_basebackup_name
    service_log                = var.service_log
    service_to_fork_from       = var.service_to_fork_from
    tiered_storage_move_factor = var.tiered_storage_move_factor

    dynamic "ip_filter_object" {
      for_each = var.ip_filter_object
      content {
        network     = lookup(ip_filter_object.value, "network")
        description = lookup(ip_filter_object.value, "description", null)
      }
    }

    public_access {
      clickhouse             = var.public_access_clickhouse
      clickhouse_arrowflight = var.public_access_clickhouse_arrowflight
      clickhouse_https       = var.public_access_clickhouse_https
      clickhouse_mysql       = var.public_access_clickhouse_mysql
      prometheus             = var.public_access_prometheus
    }

    private_access {
      clickhouse             = var.private_access_clickhouse
      clickhouse_arrowflight = var.private_access_clickhouse_arrowflight
      clickhouse_https       = var.private_access_clickhouse_https
      clickhouse_mysql       = var.private_access_clickhouse_mysql
      prometheus             = var.private_access_prometheus
    }

    privatelink_access {
      clickhouse             = var.privatelink_clickhouse
      clickhouse_arrowflight = var.privatelink_clickhouse_arrowflight
      clickhouse_https       = var.privatelink_clickhouse_https
      clickhouse_mysql       = var.privatelink_clickhouse_mysql
      prometheus             = var.privatelink_prometheus
    }
  }

  dynamic "service_integrations" {
    for_each = var.service_integrations
    content {
      integration_type    = lookup(service_integrations.value, "integration_type", null)
      source_service_name = lookup(service_integrations.value, "source_service_name", null)
    }
  }

  dynamic "tag" {
    for_each = var.tags
    content {
      key   = lookup(tag.value, "key", null)
      value = lookup(tag.value, "value", null)
    }
  }

  dynamic "tech_emails" {
    for_each = var.tech_emails
    content {
      email = lookup(tech_emails.value, "email", null)
    }
  }
}