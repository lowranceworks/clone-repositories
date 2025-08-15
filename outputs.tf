output "git_clone_commands" {
  value = join("\n\n", [
    for repo_name in data.github_repositories.default.full_names :
    "git clone https://github.com/${repo_name} ${var.project_path}${lower(repo_name)}"
  ])
  sensitive = false
}
