output "workspace_id" {
  value = tfe_workspace.this.id
}

output "repository" {
  value = var.vcs_repository
}
