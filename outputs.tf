output "dms_replication_configs_id" {
  description = "Map of id values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dms_replication_configs_arn" {
  description = "Map of arn values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "dms_replication_configs_compute_config" {
  description = "Map of compute_config values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => one(v.compute_config) if v.compute_config != null && length(v.compute_config) > 0 }
}
output "dms_replication_configs_region" {
  description = "Map of region values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "dms_replication_configs_replication_config_identifier" {
  description = "Map of replication_config_identifier values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.replication_config_identifier if v.replication_config_identifier != null && length(v.replication_config_identifier) > 0 }
}
output "dms_replication_configs_replication_settings" {
  description = "Map of replication_settings values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.replication_settings if v.replication_settings != null && length(v.replication_settings) > 0 }
}
output "dms_replication_configs_replication_type" {
  description = "Map of replication_type values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.replication_type if v.replication_type != null && length(v.replication_type) > 0 }
}
output "dms_replication_configs_resource_identifier" {
  description = "Map of resource_identifier values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.resource_identifier if v.resource_identifier != null && length(v.resource_identifier) > 0 }
}
output "dms_replication_configs_source_endpoint_arn" {
  description = "Map of source_endpoint_arn values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.source_endpoint_arn if v.source_endpoint_arn != null && length(v.source_endpoint_arn) > 0 }
}
output "dms_replication_configs_start_replication" {
  description = "Map of start_replication values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.start_replication if v.start_replication != null }
}
output "dms_replication_configs_supplemental_settings" {
  description = "Map of supplemental_settings values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.supplemental_settings if v.supplemental_settings != null && length(v.supplemental_settings) > 0 }
}
output "dms_replication_configs_table_mappings" {
  description = "Map of table_mappings values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.table_mappings if v.table_mappings != null && length(v.table_mappings) > 0 }
}
output "dms_replication_configs_tags" {
  description = "Map of tags values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "dms_replication_configs_tags_all" {
  description = "Map of tags_all values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "dms_replication_configs_target_endpoint_arn" {
  description = "Map of target_endpoint_arn values across all dms_replication_configs, keyed the same as var.dms_replication_configs"
  value       = { for k, v in aws_dms_replication_config.dms_replication_configs : k => v.target_endpoint_arn if v.target_endpoint_arn != null && length(v.target_endpoint_arn) > 0 }
}

