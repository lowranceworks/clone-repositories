output make_directory_commands {
  value       = join("\n\n", [for organization in var.organizations : "mkdir -p ${var.project_path}/${organization}"])
}

output "clone_commands" {
  value = join("\n\n", [for repo_name in data.github_repositories.default.full_names : "git clone https://github.com/${repo_name} ${var.project_path}/${repo_name}"])
  sensitive = false
}
