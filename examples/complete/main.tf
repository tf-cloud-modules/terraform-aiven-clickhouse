module "clickhouse" {
  source       = "../.."
  project      = "tf-cloud-modules"
  service_name = "test"
}

module "database" {
  source       = "../../modules/database"
  project      = module.clickhouse.project
  service_name = module.clickhouse.service_name
  name         = "test"
}