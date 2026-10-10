variable "dms_replication_configs" {
  description = <<EOT
Map of dms_replication_configs, attributes below
Required:
    - replication_config_identifier
    - replication_type
    - source_endpoint_arn
    - table_mappings
    - target_endpoint_arn
    - compute_config (block):
        - availability_zone (optional)
        - dns_name_servers (optional)
        - kms_key_id (optional)
        - max_capacity_units (optional)
        - min_capacity_units (optional)
        - multi_az (optional)
        - preferred_maintenance_window (optional)
        - replication_subnet_group_id (required)
        - vpc_security_group_ids (optional)
Optional:
    - region
    - replication_settings
    - resource_identifier
    - start_replication
    - supplemental_settings
    - tags
    - tags_all
EOT

  type = map(object({
    replication_config_identifier = string
    replication_type              = string
    source_endpoint_arn           = string
    table_mappings                = string
    target_endpoint_arn           = string
    region                        = optional(string)
    replication_settings          = optional(string)
    resource_identifier           = optional(string)
    start_replication             = optional(bool)
    supplemental_settings         = optional(string)
    tags                          = optional(map(string))
    tags_all                      = optional(map(string))
    compute_config = object({
      availability_zone            = optional(string)
      dns_name_servers             = optional(string)
      kms_key_id                   = optional(string)
      max_capacity_units           = optional(number)
      min_capacity_units           = optional(number)
      multi_az                     = optional(bool)
      preferred_maintenance_window = optional(string)
      replication_subnet_group_id  = string
      vpc_security_group_ids       = optional(set(string))
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.dms_replication_configs : (
        v.supplemental_settings == null || (can(jsondecode(v.supplemental_settings)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.dms_replication_configs : (
        can(jsondecode(v.table_mappings))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

