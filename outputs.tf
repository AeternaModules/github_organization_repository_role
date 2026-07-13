output "organization_repository_roles_id" {
  description = "Map of id values across all organization_repository_roles, keyed the same as var.organization_repository_roles"
  value       = { for k, v in github_organization_repository_role.organization_repository_roles : k => v.id }
}
output "organization_repository_roles_base_role" {
  description = "Map of base_role values across all organization_repository_roles, keyed the same as var.organization_repository_roles"
  value       = { for k, v in github_organization_repository_role.organization_repository_roles : k => v.base_role }
}
output "organization_repository_roles_description" {
  description = "Map of description values across all organization_repository_roles, keyed the same as var.organization_repository_roles"
  value       = { for k, v in github_organization_repository_role.organization_repository_roles : k => v.description }
}
output "organization_repository_roles_name" {
  description = "Map of name values across all organization_repository_roles, keyed the same as var.organization_repository_roles"
  value       = { for k, v in github_organization_repository_role.organization_repository_roles : k => v.name }
}
output "organization_repository_roles_permissions" {
  description = "Map of permissions values across all organization_repository_roles, keyed the same as var.organization_repository_roles"
  value       = { for k, v in github_organization_repository_role.organization_repository_roles : k => v.permissions }
}
output "organization_repository_roles_role_id" {
  description = "Map of role_id values across all organization_repository_roles, keyed the same as var.organization_repository_roles"
  value       = { for k, v in github_organization_repository_role.organization_repository_roles : k => v.role_id }
}

