variable "apigee_sync_authorizations" {
  description = <<EOT
Map of apigee_sync_authorizations, attributes below
Required:
    - identities
    - name
Optional:
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    identities = list(string)
    name       = string
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

