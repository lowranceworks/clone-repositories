# clone repositories

## TLDR

The following commands will generate `git clone` commands:

```sh
terraform init

terraform apply \
  -var "owner=lowranceworks" \
  -var "token=$GH_TOKEN" \
  -auto-approve

terraform output --raw git_clone_commands | bash
```
