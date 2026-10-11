resource "google_apigee_sync_authorization" "apigee_sync_authorizations" {
  for_each = var.apigee_sync_authorizations

  identities = each.value.identities
  name       = each.value.name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

