###############################################################################
# Environment
###############################################################################
variable "aws_account_id" {
  description = "The account ID you are building into."
}

variable "region" {
  description = "The AWS region the state should reside in."
  default     = "ap-southeast-2"
}

variable "environment" {
  description = "Name of the environment for the deployment, e.g. Integration, PreProduction, Production, QA, Staging, Test"
  default     = "Development"
}

variable "ecr_name" {
  description = "Name of the ECR Repo"
}
