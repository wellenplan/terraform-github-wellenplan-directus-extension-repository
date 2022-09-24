output "html_url" {
  description = "HTML URL of the created repo."

  value = github_repository.repo.html_url
}
