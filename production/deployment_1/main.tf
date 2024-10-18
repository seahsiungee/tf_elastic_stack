# -------------------------------------------------------------
# Terraform provider configuration
# -------------------------------------------------------------

terraform {
  required_version = ">= 1.0.2"
  backend "remote" {
    # The name of your Terraform Cloud organization.
    organization = "elastic_stack"

    # The name of the Terraform Cloud workspace to store Terraform state files in.
    workspaces {
      name = "tf_elastic_stack-production"
    }
  }
  required_providers {
    ec = {
      source  = "elastic/ec"
      version = ">= 0.11.0"
    }
    elasticstack = {
      source  = "elastic/elasticstack"
      version = ">= 0.11.7"
    }
  }
} 