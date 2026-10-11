output "mlflow_model_lookup_id" {
  description = "Map of id values across all mlflow_model_lookup, keyed the same as var.mlflow_model_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_mlflow_model.mlflow_model_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "mlflow_model_lookup_description" {
  description = "Map of description values across all mlflow_model_lookup, keyed the same as var.mlflow_model_lookup except keys with no description are omitted"
  value       = { for k, v in data.databricks_mlflow_model.mlflow_model_lookup : k => v.description if v.description != null && length(v.description) > 0 }
}
output "mlflow_model_lookup_latest_versions" {
  description = "Map of latest_versions values across all mlflow_model_lookup, keyed the same as var.mlflow_model_lookup except keys with no latest_versions are omitted"
  value       = { for k, v in data.databricks_mlflow_model.mlflow_model_lookup : k => v.latest_versions if v.latest_versions != null && length(v.latest_versions) > 0 }
}
output "mlflow_model_lookup_name" {
  description = "Map of name values across all mlflow_model_lookup, keyed the same as var.mlflow_model_lookup except keys with no name are omitted"
  value       = { for k, v in data.databricks_mlflow_model.mlflow_model_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "mlflow_model_lookup_permission_level" {
  description = "Map of permission_level values across all mlflow_model_lookup, keyed the same as var.mlflow_model_lookup except keys with no permission_level are omitted"
  value       = { for k, v in data.databricks_mlflow_model.mlflow_model_lookup : k => v.permission_level if v.permission_level != null && length(v.permission_level) > 0 }
}
output "mlflow_model_lookup_provider_config" {
  description = "Map of provider_config values across all mlflow_model_lookup, keyed the same as var.mlflow_model_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_mlflow_model.mlflow_model_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "mlflow_model_lookup_tags" {
  description = "Map of tags values across all mlflow_model_lookup, keyed the same as var.mlflow_model_lookup except keys with no tags are omitted"
  value       = { for k, v in data.databricks_mlflow_model.mlflow_model_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "mlflow_model_lookup_user_id" {
  description = "Map of user_id values across all mlflow_model_lookup, keyed the same as var.mlflow_model_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.databricks_mlflow_model.mlflow_model_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

