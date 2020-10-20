terraform {
  backend "remote" {
    organization = "NorthOps"

    workspaces {
      name = "github-config"
    }
  }
}


provider "github" {
  token   = var.github_token
  organization = var.github_organization
  version = "~> 3.0.0"
}

locals {
  common_labels = [
    {
      name   = "invalid"
      colour = "000000"
    }
  ]
  common_topics = [
    "uk",
  ]
  aws_topics = [
    "aws",
    "terraform",
    "infrastructure",
    "infrastructure-as-code",
  ]
}
