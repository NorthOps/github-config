module "unifi-firewall" {
  source      = "git@github.com:NorthOps/terraform-github-repository.git"
  name        = "terraform-unifi-firewall"

  branch_protection_enabled = true
  delete_branch_on_merge    = true
  description               = "Terraform module to manage common unifi firewall rules." 
  has_issues                = true
}
