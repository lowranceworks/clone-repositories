# clone repositories

## TLDR

The following commands will create a directory for each Github organization and then clone the repositories to each respective directory:

```zsh
terraform init
terraform apply \
  -var 'token='ghp_asdf' \
  -var 'project_path=~/Projects' \
  -var 'organizations=[ "lowranceworks", ]' \
  -auto-approve

terraform output --raw 'make_directory_commands' | bash
terraform output --raw 'clone_commands' | bash 
```
