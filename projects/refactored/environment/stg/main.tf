##############################################
# AWS
##############################################
provider "aws" {
  region  = "us-east-2"
  version = "~> 2.0"
}

##############################################
# Terraform and Backend
##############################################
terraform {
  required_version = ">= 0.12"

  backend "s3" {
    bucket = "liverpool-tf-state"
    key    = "project02/environment/stg/terraform.tfstate"
    region = "us-west-1"
  }
}