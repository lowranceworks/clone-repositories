data "github_repositories" "orgs" {
  for_each = toset(var.organizations)

  query           = "org:${each.value}"
  include_repo_id = true
}
