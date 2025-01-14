data "github_repositories" "default" {
  query           = "org:infrastructure" # ${var.owner}"
  include_repo_id = true
}

