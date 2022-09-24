terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.2"
    }
  }
}

provider "github" {
  owner = "wellenplan"
  alias = "wellenplan"
}

module "github_wellenplan_directus_extension_repository" {
  source = "../"

  providers = {
    github = github.wellenplan
  }

  name = "directus-extension-test"

  description = "e2e test repo for terraform-github-wellenplan-directus-extension-repository"
}

output "html_url" {
  value = module.github_wellenplan_directus_extension_repository.html_url
}
