# Complete Aiven Clickhouse Cluster

Configuration in this directory creates an Aiven Clickhouse cluster with following features:

- Aiven Clickhouse Cluster
- Aiven Clickhouse Database
- Aiven Clickhouse Role

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

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->