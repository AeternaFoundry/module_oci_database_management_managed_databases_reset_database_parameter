resource "oci_database_management_managed_databases_reset_database_parameter" "database_management_managed_databases_reset_database_parameters" {
  for_each = var.database_management_managed_databases_reset_database_parameters

  managed_database_id = each.value.managed_database_id
  parameters          = each.value.parameters
  scope               = each.value.scope

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      password  = credentials.value.password
      role      = credentials.value.role
      secret_id = credentials.value.secret_id
      user_name = credentials.value.user_name
    }
  }

  dynamic "database_credential" {
    for_each = each.value.database_credential != null ? [each.value.database_credential] : []
    content {
      credential_type     = database_credential.value.credential_type
      named_credential_id = database_credential.value.named_credential_id
      password            = database_credential.value.password
      password_secret_id  = database_credential.value.password_secret_id
      role                = database_credential.value.role
      username            = database_credential.value.username
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

