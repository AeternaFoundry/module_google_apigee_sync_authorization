output "apigee_sync_authorizations_id" {
  description = "Map of id values across all apigee_sync_authorizations, keyed the same as var.apigee_sync_authorizations except keys with no id are omitted"
  value       = { for k, v in google_apigee_sync_authorization.apigee_sync_authorizations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_sync_authorizations_etag" {
  description = "Map of etag values across all apigee_sync_authorizations, keyed the same as var.apigee_sync_authorizations except keys with no etag are omitted"
  value       = { for k, v in google_apigee_sync_authorization.apigee_sync_authorizations : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "apigee_sync_authorizations_identities" {
  description = "Map of identities values across all apigee_sync_authorizations, keyed the same as var.apigee_sync_authorizations except keys with no identities are omitted"
  value       = { for k, v in google_apigee_sync_authorization.apigee_sync_authorizations : k => v.identities if v.identities != null && length(v.identities) > 0 }
}
output "apigee_sync_authorizations_name" {
  description = "Map of name values across all apigee_sync_authorizations, keyed the same as var.apigee_sync_authorizations except keys with no name are omitted"
  value       = { for k, v in google_apigee_sync_authorization.apigee_sync_authorizations : k => v.name if v.name != null && length(v.name) > 0 }
}

