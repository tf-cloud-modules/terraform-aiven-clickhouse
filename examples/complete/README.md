# Complete Aiven Clickhouse Cluster

Configuration in this directory creates an Aiven Clickhouse cluster with following features:

- Aiven Clickhouse Cluster
- Aiven Clickhouse Database
- Aiven Clickhouse Role
- Aiven Clickhouse Role Grant
- Aiven Clickhouse User
- Aiven Clickhouse User Grant

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_clickhouse"></a> [clickhouse](#module\_clickhouse) | ../.. | n/a |
| <a name="module_database"></a> [database](#module\_database) | ../../modules/database | n/a |
| <a name="module_role"></a> [role](#module\_role) | ../../modules/role | n/a |
| <a name="module_role_grant"></a> [role\_grant](#module\_role\_grant) | ../../modules/role_grant | n/a |
| <a name="module_user"></a> [user](#module\_user) | ../../modules/user | n/a |
| <a name="module_user_grant"></a> [user\_grant](#module\_user\_grant) | ../../modules/user_grant | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->