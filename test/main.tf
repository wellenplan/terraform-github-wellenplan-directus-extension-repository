
module "github_wellenplan_directus_extension_repository" {
  source = "../"

  name = "directus-extension-test"

  description = "e2e test repo for terraform-github-wellenplan-directus-extension-repository"
}

output "html_url" {
  value = module.github_wellenplan_directus_extension_repository.html_url
}

output "branches" {
  value = module.github_wellenplan_directus_extension_repository.branches
}
