resource "github_organization_repository_role" "organization_repository_roles" {
  for_each = var.organization_repository_roles

  base_role   = each.value.base_role
  name        = each.value.name
  permissions = each.value.permissions
  description = each.value.description
}

