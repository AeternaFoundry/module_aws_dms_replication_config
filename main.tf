resource "aws_dms_replication_config" "dms_replication_configs" {
  for_each = var.dms_replication_configs

  replication_config_identifier = each.value.replication_config_identifier
  replication_type              = each.value.replication_type
  source_endpoint_arn           = each.value.source_endpoint_arn
  table_mappings                = each.value.table_mappings
  target_endpoint_arn           = each.value.target_endpoint_arn
  region                        = each.value.region
  replication_settings          = each.value.replication_settings
  resource_identifier           = each.value.resource_identifier
  start_replication             = each.value.start_replication
  supplemental_settings         = each.value.supplemental_settings
  tags                          = each.value.tags
  tags_all                      = each.value.tags_all

  compute_config {
    availability_zone            = each.value.compute_config.availability_zone
    dns_name_servers             = each.value.compute_config.dns_name_servers
    kms_key_id                   = each.value.compute_config.kms_key_id
    max_capacity_units           = each.value.compute_config.max_capacity_units
    min_capacity_units           = each.value.compute_config.min_capacity_units
    multi_az                     = each.value.compute_config.multi_az
    preferred_maintenance_window = each.value.compute_config.preferred_maintenance_window
    replication_subnet_group_id  = each.value.compute_config.replication_subnet_group_id
    vpc_security_group_ids       = each.value.compute_config.vpc_security_group_ids
  }
}

