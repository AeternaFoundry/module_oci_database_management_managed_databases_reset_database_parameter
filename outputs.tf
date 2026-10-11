output "database_management_managed_databases_reset_database_parameters_id" {
  description = "Map of id values across all database_management_managed_databases_reset_database_parameters, keyed the same as var.database_management_managed_databases_reset_database_parameters except keys with no id are omitted"
  value       = { for k, v in oci_database_management_managed_databases_reset_database_parameter.database_management_managed_databases_reset_database_parameters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_management_managed_databases_reset_database_parameters_credentials" {
  description = "Map of credentials values across all database_management_managed_databases_reset_database_parameters, keyed the same as var.database_management_managed_databases_reset_database_parameters except keys with no credentials are omitted"
  value       = { for k, v in oci_database_management_managed_databases_reset_database_parameter.database_management_managed_databases_reset_database_parameters : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "database_management_managed_databases_reset_database_parameters_database_credential" {
  description = "Map of database_credential values across all database_management_managed_databases_reset_database_parameters, keyed the same as var.database_management_managed_databases_reset_database_parameters except keys with no database_credential are omitted"
  value       = { for k, v in oci_database_management_managed_databases_reset_database_parameter.database_management_managed_databases_reset_database_parameters : k => one(v.database_credential) if v.database_credential != null && length(v.database_credential) > 0 }
  sensitive   = true
}
output "database_management_managed_databases_reset_database_parameters_managed_database_id" {
  description = "Map of managed_database_id values across all database_management_managed_databases_reset_database_parameters, keyed the same as var.database_management_managed_databases_reset_database_parameters except keys with no managed_database_id are omitted"
  value       = { for k, v in oci_database_management_managed_databases_reset_database_parameter.database_management_managed_databases_reset_database_parameters : k => v.managed_database_id if v.managed_database_id != null && length(v.managed_database_id) > 0 }
}
output "database_management_managed_databases_reset_database_parameters_parameters" {
  description = "Map of parameters values across all database_management_managed_databases_reset_database_parameters, keyed the same as var.database_management_managed_databases_reset_database_parameters except keys with no parameters are omitted"
  value       = { for k, v in oci_database_management_managed_databases_reset_database_parameter.database_management_managed_databases_reset_database_parameters : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "database_management_managed_databases_reset_database_parameters_scope" {
  description = "Map of scope values across all database_management_managed_databases_reset_database_parameters, keyed the same as var.database_management_managed_databases_reset_database_parameters except keys with no scope are omitted"
  value       = { for k, v in oci_database_management_managed_databases_reset_database_parameter.database_management_managed_databases_reset_database_parameters : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

