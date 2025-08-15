output "git_clone_commands" {
  value = join("\n\n", flatten([
    for org_name, repos in data.github_repositories.orgs : [
      for repo_name in repos.full_names :
      "git clone https://github.com/${repo_name} ${var.project_path}${org_name}/${basename(repo_name)}"
    ]
  ]))
  sensitive = false
}
