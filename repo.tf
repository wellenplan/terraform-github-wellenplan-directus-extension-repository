resource "github_repository" "repo" {
  name        = var.name
  description = var.description

  visibility = "public"

  allow_auto_merge       = true
  allow_merge_commit     = false
  delete_branch_on_merge = true

  has_downloads = false
  has_issues    = true
  has_projects  = true
  has_wiki      = false

  vulnerability_alerts = true

  dynamic "template" {
    for_each = var.has_template ? [var.template] : []
    content {
      owner      = var.organization
      repository = template.value
    }
  }
}

resource "github_branch_protection" "main" {
  repository_id = github_repository.repo.node_id

  pattern        = var.default_branch
  enforce_admins = true

  allows_deletions    = false
  allows_force_pushes = false

  required_linear_history         = true
  require_conversation_resolution = true

  required_status_checks {
    strict   = true
    contexts = ["call-workflow / build"]
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = 0
  }
}
