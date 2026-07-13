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
  # --- Unconfirmed validation candidates, derived from github_organization_repository_role's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: base_role
  #   source:    validateValueFunc: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
}

