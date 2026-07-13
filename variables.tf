variable "organization_repository_roles" {
  description = <<EOT
Map of organization_repository_roles, attributes below
Required:
    - base_role
    - name
    - permissions
Optional:
    - description
EOT

  type = map(object({
    base_role   = string
    name        = string
    permissions = set(string)
    description = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

