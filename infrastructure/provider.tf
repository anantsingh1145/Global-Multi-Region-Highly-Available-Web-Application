terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.27.0"
    }
  }
}

provider "aws" {
  # AWS region - can be overridden per resource if needed
  region = var.region

  # Default tags applied to ALL resources created by this provider
  # These tags will be automatically added to every resource
  default_tags {
    tags = var.common_tags
  }
}