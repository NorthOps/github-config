resource "github_repository" "contracting_tips" {
  name        = "contracting-tips"
  description = "Handy hints and tips for UK-based IT contractors."
  auto_init   = true

  allow_merge_commit     = false
  delete_branch_on_merge = true
  has_issues             = true

  lifecycle {
    prevent_destroy = true
  }
}

resource "github_branch_protection" "contracting_tips_main" {
  branch         = github_repository.contracting_tips.default_branch
  repository     = github_repository.contracting_tips.name
  enforce_admins = false

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    require_code_owner_reviews = true
  }
}
