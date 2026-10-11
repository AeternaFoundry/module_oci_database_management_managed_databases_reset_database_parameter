variable "database_management_managed_databases_reset_database_parameters" {
  description = <<EOT
Map of database_management_managed_databases_reset_database_parameters, attributes below
Required:
    - managed_database_id
    - parameters
    - scope
Optional:
    - credentials (block):
        - password (optional)
        - role (optional)
        - secret_id (optional)
        - user_name (optional)
    - database_credential (block):
        - credential_type (required)
        - named_credential_id (optional)
        - password (optional)
        - password_secret_id (optional)
        - role (optional)
        - username (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    managed_database_id = string
    parameters          = list(string)
    scope               = string
    credentials = optional(object({
      password  = optional(string)
      role      = optional(string)
      secret_id = optional(string)
      user_name = optional(string)
    }))
    database_credential = optional(object({
      credential_type     = string
      named_credential_id = optional(string)
      password            = optional(string)
      password_secret_id  = optional(string)
      role                = optional(string)
      username            = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_management_managed_databases_reset_database_parameters : (
        v.database_credential == null || (contains([for v in ["NAMED_CREDENTIAL", "PASSWORD", "SECRET"] : lower(v)], lower(v.database_credential.credential_type)))
      )
    ])
    error_message = "must be one of: \"NAMED_CREDENTIAL\", \"PASSWORD\", \"SECRET\""
  }
}

