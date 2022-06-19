variable "name" {
  description = "Name of the managed repo."

  type = string
}

variable "description" {
  description = "Description of managed repo."

  type = string
}

variable "organization" {
  description = "GitHub organisation that owns the repo."

  default = "wellenplan"
}

variable "template" {
  description = "Template to use for creating new repos"

  default = "directus-extension-wellenplan-template"
}

variable "default_branch" {
  description = "Name of default branch for repo. Used to set up branch protection."

  default = "main"
}
