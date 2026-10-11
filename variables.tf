variable "mlflow_model_lookup" {
  description = <<EOT
Map of mlflow_model_lookup, attributes below
Required:
    - name
Optional:
    - description
    - permission_level
    - user_id
    - latest_versions (block):
        - creation_timestamp (optional)
        - current_stage (optional)
        - description (optional)
        - last_updated_timestamp (optional)
        - name (optional)
        - run_id (optional)
        - run_link (optional)
        - source (optional)
        - status (optional)
        - status_message (optional)
        - tags (optional, block):
            - key (optional)
            - value (optional)
        - user_id (optional)
        - version (optional)
    - provider_config (block):
        - workspace_id (optional)
    - tags (block):
        - key (optional)
        - value (optional)
EOT

  type = map(object({
    name             = string
    description      = optional(string)
    permission_level = optional(string)
    user_id          = optional(string)
    latest_versions = optional(list(object({
      creation_timestamp     = optional(number)
      current_stage          = optional(string)
      description            = optional(string)
      last_updated_timestamp = optional(number)
      name                   = optional(string)
      run_id                 = optional(string)
      run_link               = optional(string)
      source                 = optional(string)
      status                 = optional(string)
      status_message         = optional(string)
      tags = optional(list(object({
        key   = optional(string)
        value = optional(string)
      })))
      user_id = optional(string)
      version = optional(string)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
    tags = optional(list(object({
      key   = optional(string)
      value = optional(string)
    })))
  }))
}

