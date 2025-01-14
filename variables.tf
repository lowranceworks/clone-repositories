variable "token" {
  type        = string
  description = "Github personal access token."
}

variable "owner" {
  type        = string
  default     = "lowranceworks"
  description = "Github username/organization that is the owner of the repositories that you want to clone."
}

variable "project_path" {
  type        = string
  default     = "~/projects/"
  description = "The path to create the github organization directory."
}

variable "base_url" {
  type        = string
  default     = null
  description = "Github base url (must include 'https://'). Set to 'null' if the company is using github.com."
}
