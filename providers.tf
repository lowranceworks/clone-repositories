provider "github" {
  base_url = var.base_url
  owner    = local.organization
  token    = var.token
}