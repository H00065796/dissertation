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
    key    = "project02/applications/ecs/dev/terraform.tfstate"
    region = "us-west-1"
  }
}

##############################################
# Referenced Projects
##############################################
data "terraform_remote_state" "env" {
  backend = "s3"

  config = {
    bucket = "liverpool-tf-state"
    key    = "project02/environment/dev/terraform.tfstate"
    region = "us-west-1"
  }
}

data "terraform_remote_state" "lb" {
  backend = "s3"

  config = {
    bucket = "liverpool-tf-state"
    key    = "project02/applications/load_balancer/dev/terraform.tfstate"
    region = "us-west-1"
  }
}