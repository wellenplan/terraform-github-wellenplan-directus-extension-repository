output "html_url" {
  description = "HTML URL of the created repo."

  value = github_repository.repo.html_url
}

output "branches" {
  description = "Default branches for the created repo."

  value = github_repository.repo.branches
}
