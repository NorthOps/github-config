module "unifi-firewall" {
  source      = "github.com/NorthOps/terraform-github-repository"
  name        = "terraform-unifi-firewall"

  delete_branch_on_merge    = true
  description               = "Terraform module to manage common unifi firewall rules." 
  has_issues                = true
}
