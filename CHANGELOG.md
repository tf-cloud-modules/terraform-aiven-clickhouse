# Changelog

All notable changes to this module will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- New `clickhouse_user_config` fields as flat variables: `backup_hour`, `backup_minute`, `clickhouse_version`, `enable_ipv6`, `ip_filter_string`, `recovery_basebackup_name`, `service_log`, `tiered_storage_move_factor`.
- `public_access`, `private_access` and `privatelink_access` blocks of `clickhouse_user_config` via flat `public_access_*`, `private_access_*` and `privatelink_*` variables (clickhouse, clickhouse_arrowflight, clickhouse_https, clickhouse_mysql, prometheus).
- `tech_emails` variable and output for service technical contacts.
- `cmk_id` variable and output for bring your own key (BYOK) encryption.
- `maintenance_window_enabled` output.
- Russian translation of the README (`README.ru.md`).

### Changed
- Raise aiven/aiven provider constraint to `>= 4.57.0, < 5.0.0` (validated against 4.66.0).

## [2.0.0] - 2023-03-28

### Changed
- **Breaking:** add aiven/aiven provider v4 support.

## [1.1.2] - 2023-03-28

### Fixed
- Lock provider version and update vars.

## [1.1.1] - 2022-10-03

### Changed
- Apply one-variable approach in examples.

## [1.1.0] - 2022-09-20

### Added
- Service integrations support.

## [1.0.0] - 2022-08-18

### Added
- Grant modules (`role_grant`, `user_grant`).

## [0.5.1] - 2022-08-18

### Fixed
- Tag section handling in the root module.

## [0.5.0] - 2022-08-18

### Added
- User module.

## [0.4.0] - 2022-08-18

### Added
- Role module.

## [0.3.0] - 2022-08-18

### Added
- Database module.

## [0.2.0] - 2022-08-18

### Added
- `clickhouse_user_config` support in the root module.

## [0.1.0] - 2022-08-18

Initial release.

[Unreleased]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/2.0.0...HEAD
[2.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/1.1.2...2.0.0
[1.1.2]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/1.1.1...1.1.2
[1.1.1]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/0.5.1...1.0.0
[0.5.1]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/0.5.0...0.5.1
[0.5.0]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/0.4.0...0.5.0
[0.4.0]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/0.3.0...0.4.0
[0.3.0]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/0.2.0...0.3.0
[0.2.0]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/compare/0.1.0...0.2.0
[0.1.0]: https://github.com/tf-cloud-modules/terraform-aiven-clickhouse/releases/tag/0.1.0
