data "github_repositories" "default" {
  query           = "org:${var.owner}"
  include_repo_id = true
}

