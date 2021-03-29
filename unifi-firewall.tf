resource "github_repository" "unifi_firewall" {
  name        = "terraform-unifi-firewall"
  description = "Terraform module to manage common unifi firewall rules." 
  auto_init   = true

  allow_merge_commit     = false
  delete_branch_on_merge = true
  has_issues             = true

  lifecycle {
    prevent_destroy = true
  }
}

resource "github_branch_protection" "unifi_firewall_main" {
  branch         = github_repository.unifi_firewall.default_branch
  repository     = github_repository.unifi_firewall.name
  enforce_admins = false

  required_status_checks {
    strict = true
  }

  required_pull_request_reviews {
    dismiss_stale_reviews      = true
    require_code_owner_reviews = true
  }
}
