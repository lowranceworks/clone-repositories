# clone repositories

## TLDR

The following commands will create a directory for each Github organization and then clone the repositories to each respective directory:

```sh
terraform init && \
terraform apply \
  -var "token=$GH_TOKEN" \
  -var "base_url=$COMPANY_GITHUB_DOMAIN" \
  -auto-approve

terraform output --raw git_clone_commands | bash
```
