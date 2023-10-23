variable token {
  type    = string
  description = "Github personal access token."
}

variable "organizations" {
  type        = set(string)
  default     = ["lowranceworks"]
  description = "Github organizations."

  validation {
    condition     = length(var.organizations) > 0
    error_message = "You must provide at least one GitHub organization."
  }
}

variable project_path {
  type        = string
  default     = "~/Projects"
  description = "The path to create directories on your machine for each Github organization."
}

variable base_url {
  type        = string
  default     = null
  description = "Github base url (set to null if you are using github.com"
}

variable repository_query {
  type        = string
  default     = "is:private"
  description = "The query used to selet repositories to clone. See https://docs.github.com/search-github"
}
