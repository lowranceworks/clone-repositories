output "git_clone_commands" {
  value     = join("\n\n", [for repo_name in data.github_repositories.default.full_names : "git clone ${var.base_url}/${repo_name} ~/projects/${lower(repo_name)}"])
  sensitive = false
}
