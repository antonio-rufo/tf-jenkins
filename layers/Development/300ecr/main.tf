###############################################################################
# Providers
###############################################################################
provider "aws" {
  region              = var.region
  allowed_account_ids = [var.aws_account_id]
}

###############################################################################
# Use Terraform Version 0.12
###############################################################################
terraform {
  required_version = "> 0.12, < 0.13"
  required_providers {
    aws = "~> 3.6.0"
  }
}

###############################################################################
# ECR
###############################################################################
resource "aws_ecr_repository" "myapp" {
  name = var.ecr_name
}
