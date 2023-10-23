data "github_repositories" "default" {
  # for_each = var.organizations
  
  query = var.repository_query
  include_repo_id = true
}