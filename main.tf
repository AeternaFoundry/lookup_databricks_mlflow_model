data "databricks_mlflow_model" "mlflow_model_lookup" {
  for_each = var.mlflow_model_lookup

  name             = each.value.name
  description      = each.value.description
  permission_level = each.value.permission_level
  user_id          = each.value.user_id

  dynamic "latest_versions" {
    for_each = each.value.latest_versions != null ? each.value.latest_versions : []
    content {
      creation_timestamp     = latest_versions.value.creation_timestamp
      current_stage          = latest_versions.value.current_stage
      description            = latest_versions.value.description
      last_updated_timestamp = latest_versions.value.last_updated_timestamp
      name                   = latest_versions.value.name
      run_id                 = latest_versions.value.run_id
      run_link               = latest_versions.value.run_link
      source                 = latest_versions.value.source
      status                 = latest_versions.value.status
      status_message         = latest_versions.value.status_message
      dynamic "tags" {
        for_each = latest_versions.value.tags != null ? latest_versions.value.tags : []
        content {
          key   = tags.value.key
          value = tags.value.value
        }
      }
      user_id = latest_versions.value.user_id
      version = latest_versions.value.version
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }

  dynamic "tags" {
    for_each = each.value.tags != null ? each.value.tags : []
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}

