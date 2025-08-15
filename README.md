# clone repositories

## TLDR

The following commands will generate `git clone` commands:

```sh
terraform init

terraform apply \
  -var "token=$GH_TOKEN" \
  -var 'organizations=["lowranceworks", "platform-init"]' \
  -auto-approve

terraform output --raw git_clone_commands | bash
```
