# clone repositories

## TLDR

The following commands will generate `git clone` commamds:

```sh
terraform init && \
terraform apply \
  -var "owner=$GITHUB_OWNER" \
  -var "token=$GH_TOKEN" \
  -var "base_url=$COMPANY_GITHUB_DOMAIN" \
  -auto-approve

terraform output --raw git_clone_commands | bash
```
