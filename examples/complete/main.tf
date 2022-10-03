module "clickhouse" {
  source       = "../.."
  project      = var.project
  service_name = "test"
  tags = [
    {
      key   = "env"
      value = "test"
    }
  ]
}

module "database" {
  source       = "../../modules/database"
  project      = module.clickhouse.project
  service_name = module.clickhouse.service_name
  name         = "test"
}

module "role" {
  source       = "../../modules/role"
  project      = module.clickhouse.project
  service_name = module.clickhouse.service_name
  role         = "test"
}

module "user" {
  source       = "../../modules/user"
  project      = module.clickhouse.project
  service_name = module.clickhouse.service_name
  username     = "test"
}

module "role_grant" {
  source       = "../../modules/role_grant"
  project      = module.clickhouse.project
  service_name = module.clickhouse.service_name
  role         = module.role.role
  privilege_grants = [
    {
      privilege = "INSERT"
      database  = module.database.name
      table     = "*"
    }
  ]
}

module "user_grant" {
  source       = "../../modules/user_grant"
  project      = module.clickhouse.project
  service_name = module.clickhouse.service_name
  user         = module.user.username
  role_grants = [{
    role = module.role.role
  }]
}