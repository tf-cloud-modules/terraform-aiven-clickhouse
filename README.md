**English** | [Русский](README.ru.md)

# Aiven Clickhouse Terraform module

Terraform module which creates Aiven Clickhouse resources

## Usage

```hcl
module "clickhouse" {
  source       = "tf-cloud-modules/clickhouse/aiven"
  project      = "test"
  service_name = "test"
  clickhouse_version = "26.3"
}
```

The module defaults to ClickHouse `26.3`, currently the latest version available on Aiven. If you add this module default to an existing service, Terraform may plan a ClickHouse version upgrade. Review the plan and set `clickhouse_version` to the service's current version if you want to keep it unchanged.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 4.61.0, < 5.0.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | 4.66.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [aiven_clickhouse.this](https://registry.terraform.io/providers/aiven/aiven/latest/docs/resources/clickhouse) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_backup_hour"></a> [backup\_hour](#input\_backup\_hour) | The hour of day (in UTC) when backup for the service is started. New backup is only started if previous backup has already completed. | `number` | `null` | no |
| <a name="input_backup_minute"></a> [backup\_minute](#input\_backup\_minute) | The minute of an hour when backup for the service is started. New backup is only started if previous backup has already completed. | `number` | `null` | no |
| <a name="input_clickhouse_version"></a> [clickhouse\_version](#input\_clickhouse\_version) | ClickHouse major version. Defaults to 26.3, the latest version currently available on Aiven. | `string` | `"26.3"` | no |
| <a name="input_cloud_name"></a> [cloud\_name](#input\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. | `string` | `"aws-us-east-1"` | no |
| <a name="input_cmk_id"></a> [cmk\_id](#input\_cmk\_id) | UUID of the Customer Managed Key (CMK) used to apply bring your own key (BYOK) encryption to this service's data at rest. | `string` | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_enable_ipv6"></a> [enable\_ipv6](#input\_enable\_ipv6) | Register AAAA DNS records for the service, and allow IPv6 packets to service ports. | `bool` | `null` | no |
| <a name="input_ip_filter_object"></a> [ip\_filter\_object](#input\_ip\_filter\_object) | Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'. | `list(any)` | <pre>[<br/>  {<br/>    "network": "0.0.0.0/0"<br/>  }<br/>]</pre> | no |
| <a name="input_ip_filter_string"></a> [ip\_filter\_string](#input\_ip\_filter\_string) | Allow incoming connections from CIDR address block, e.g. '10.20.0.0/16'. | `list(string)` | `null` | no |
| <a name="input_maintenance_window_dow"></a> [maintenance\_window\_dow](#input\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. One monday, tuesday, wednesday, etc. | `string` | `"thursday"` | no |
| <a name="input_maintenance_window_time"></a> [maintenance\_window\_time](#input\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. UTC time in HH:mm:ss format. | `string` | `"01:00:00"` | no |
| <a name="input_plan"></a> [plan](#input\_plan) | Defines what kind of computing resources are allocated for the service. | `string` | `"hobbyist"` | no |
| <a name="input_private_access_clickhouse"></a> [private\_access\_clickhouse](#input\_private\_access\_clickhouse) | Allow clients to connect to clickhouse with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations. | `bool` | `false` | no |
| <a name="input_private_access_clickhouse_arrowflight"></a> [private\_access\_clickhouse\_arrowflight](#input\_private\_access\_clickhouse\_arrowflight) | Allow clients to connect to clickhouse\_arrowflight with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations. | `bool` | `false` | no |
| <a name="input_private_access_clickhouse_https"></a> [private\_access\_clickhouse\_https](#input\_private\_access\_clickhouse\_https) | Allow clients to connect to clickhouse\_https with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations. | `bool` | `false` | no |
| <a name="input_private_access_clickhouse_mysql"></a> [private\_access\_clickhouse\_mysql](#input\_private\_access\_clickhouse\_mysql) | Allow clients to connect to clickhouse\_mysql with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations. | `bool` | `false` | no |
| <a name="input_private_access_prometheus"></a> [private\_access\_prometheus](#input\_private\_access\_prometheus) | Allow clients to connect to prometheus with a DNS name that always resolves to the service's private IP addresses. Only available in certain network locations. | `bool` | `false` | no |
| <a name="input_privatelink_clickhouse"></a> [privatelink\_clickhouse](#input\_privatelink\_clickhouse) | Enable clickhouse. | `bool` | `false` | no |
| <a name="input_privatelink_clickhouse_arrowflight"></a> [privatelink\_clickhouse\_arrowflight](#input\_privatelink\_clickhouse\_arrowflight) | Enable clickhouse\_arrowflight. | `bool` | `false` | no |
| <a name="input_privatelink_clickhouse_https"></a> [privatelink\_clickhouse\_https](#input\_privatelink\_clickhouse\_https) | Enable clickhouse\_https. | `bool` | `false` | no |
| <a name="input_privatelink_clickhouse_mysql"></a> [privatelink\_clickhouse\_mysql](#input\_privatelink\_clickhouse\_mysql) | Enable clickhouse\_mysql. | `bool` | `false` | no |
| <a name="input_privatelink_prometheus"></a> [privatelink\_prometheus](#input\_privatelink\_prometheus) | Enable prometheus. | `bool` | `false` | no |
| <a name="input_project"></a> [project](#input\_project) | Aiven Cloud Project Name | `string` | n/a | yes |
| <a name="input_project_to_fork_from"></a> [project\_to\_fork\_from](#input\_project\_to\_fork\_from) | Name of another project to fork a service from. | `string` | `""` | no |
| <a name="input_project_vpc_id"></a> [project\_vpc\_id](#input\_project\_vpc\_id) | Specifies the VPC the service should run in. If the value is not set the service is not run inside a VPC. | `string` | `null` | no |
| <a name="input_public_access_clickhouse"></a> [public\_access\_clickhouse](#input\_public\_access\_clickhouse) | Allow clients to connect to clickhouse from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_clickhouse_arrowflight"></a> [public\_access\_clickhouse\_arrowflight](#input\_public\_access\_clickhouse\_arrowflight) | Allow clients to connect to clickhouse\_arrowflight from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_clickhouse_https"></a> [public\_access\_clickhouse\_https](#input\_public\_access\_clickhouse\_https) | Allow clients to connect to clickhouse\_https from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_clickhouse_mysql"></a> [public\_access\_clickhouse\_mysql](#input\_public\_access\_clickhouse\_mysql) | Allow clients to connect to clickhouse\_mysql from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_public_access_prometheus"></a> [public\_access\_prometheus](#input\_public\_access\_prometheus) | Allow clients to connect to prometheus from the public internet for service nodes that are in a project VPC or another type of private network. | `bool` | `false` | no |
| <a name="input_recovery_basebackup_name"></a> [recovery\_basebackup\_name](#input\_recovery\_basebackup\_name) | Name of the basebackup to restore in forked service. | `string` | `null` | no |
| <a name="input_service_integrations"></a> [service\_integrations](#input\_service\_integrations) | Service integrations to specify when creating a service. | `list(any)` | `[]` | no |
| <a name="input_service_log"></a> [service\_log](#input\_service\_log) | Store logs for the service so that they are available in the HTTP API and console. | `bool` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Specifies the actual name of the service. | `string` | n/a | yes |
| <a name="input_service_to_fork_from"></a> [service\_to\_fork\_from](#input\_service\_to\_fork\_from) | Name of another service to fork from. | `string` | `""` | no |
| <a name="input_static_ips"></a> [static\_ips](#input\_static\_ips) | Static IPs that are going to be associated with this service. | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of the service tags. | `list(any)` | `[]` | no |
| <a name="input_tech_emails"></a> [tech\_emails](#input\_tech\_emails) | The email addresses for service contacts, who will receive important alerts and updates about this service. | `list(any)` | `[]` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Prevents the service from being deleted. | `bool` | `false` | no |
| <a name="input_tiered_storage_move_factor"></a> [tiered\_storage\_move\_factor](#input\_tiered\_storage\_move\_factor) | The percentage of free disk space required on local storage before data is moved to object storage. A value of 0.2 means data is moved when local storage has less than 20% free space. | `number` | `null` | no |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_clickhouse_user_config"></a> [clickhouse\_user\_config](#output\_clickhouse\_user\_config) | Сlickhouse user configurable settings. |
| <a name="output_cloud_name"></a> [cloud\_name](#output\_cloud\_name) | Defines where the cloud provider and region where the service is hosted in. |
| <a name="output_cmk_id"></a> [cmk\_id](#output\_cmk\_id) | UUID of the Customer Managed Key (CMK) used to apply bring your own key (BYOK) encryption to this service's data at rest. |
| <a name="output_components"></a> [components](#output\_components) | Service component information objects. |
| <a name="output_disk_space_cap"></a> [disk\_space\_cap](#output\_disk\_space\_cap) | The maximum disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_default"></a> [disk\_space\_default](#output\_disk\_space\_default) | The default disk space of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_disk_space_step"></a> [disk\_space\_step](#output\_disk\_space\_step) | The default disk space step of the service, possible values depend on the service type, the cloud provider and the project. |
| <a name="output_id"></a> [id](#output\_id) | The ID of this resource. |
| <a name="output_maintenance_window_dow"></a> [maintenance\_window\_dow](#output\_maintenance\_window\_dow) | Day of week when maintenance operations should be performed. |
| <a name="output_maintenance_window_enabled"></a> [maintenance\_window\_enabled](#output\_maintenance\_window\_enabled) | Indicates whether the maintenance window is currently enabled for this service. |
| <a name="output_maintenance_window_time"></a> [maintenance\_window\_time](#output\_maintenance\_window\_time) | Time of day when maintenance operations should be performed. |
| <a name="output_plan"></a> [plan](#output\_plan) | Defines what kind of computing resources are allocated for the service. |
| <a name="output_project"></a> [project](#output\_project) | Aiven Cloud Project Name. |
| <a name="output_service_host"></a> [service\_host](#output\_service\_host) | The hostname of the service. |
| <a name="output_service_integrations"></a> [service\_integrations](#output\_service\_integrations) | Service integrations to specify when creating a service. |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | Specifies the actual name of the service. |
| <a name="output_service_password"></a> [service\_password](#output\_service\_password) | Password used for connecting to the service, if applicable. |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | The port of the service. |
| <a name="output_service_type"></a> [service\_type](#output\_service\_type) | Aiven internal service type code. |
| <a name="output_service_uri"></a> [service\_uri](#output\_service\_uri) | URI for connecting to the service. |
| <a name="output_service_username"></a> [service\_username](#output\_service\_username) | Username used for connecting to the service. |
| <a name="output_static_ips"></a> [static\_ips](#output\_static\_ips) | Static IPs that are going to be associated with this service. |
| <a name="output_tech_emails"></a> [tech\_emails](#output\_tech\_emails) | The email addresses for service contacts, who will receive important alerts and updates about this service. |
<!-- END_TF_DOCS -->
