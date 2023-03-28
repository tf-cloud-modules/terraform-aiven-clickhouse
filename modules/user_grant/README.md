# Aiven Сlickhouse User Grant Terraform module

Terraform module which creates Aiven Сlickhouse User Grant resources

## Usage

```hcl
module "user_grant" {
  source        = "tf-cloud-modules/clickhouse/aiven//modules/user_grant"
  project       = "test"
  service_name  = "test"
  user          = "test"
  role_grants   = [{
    role = "test"
  }]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0, < 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | >= 3.0.0, < 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_clickhouse_grant.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/clickhouse_grant) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name. | `string` | n/a | yes |
| <a name="input_role_grants"></a> [role\_grants](#input\_role\_grants) | Configuration to grant a role. | `list(any)` | `[]` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_user"></a> [user](#input\_user) | The user to grant privileges or roles to. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_user"></a> [user](#output\_user) | TThe user to grant privileges or roles to. |
<!-- END_TF_DOCS -->