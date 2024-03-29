# Aiven Сlickhouse Database Terraform module

Terraform module which creates Aiven Сlickhouse Database resources

## Usage

```hcl
module "database" {
  source        = "tf-cloud-modules/clickhouse/aiven//modules/database"
  project       = "test"
  service_name  = "test"
  name          = "test"
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 4.0.0, < 5.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | >= 4.0.0, < 5.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_clickhouse_database.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/clickhouse_database) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the service database. | `string` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_name"></a> [name](#output\_name) | The name of the service database. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
<!-- END_TF_DOCS -->