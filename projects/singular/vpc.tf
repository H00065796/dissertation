##############################################
# VPC
##############################################

module "vpc_main" {
  source            = "git::https://github.com/H00065796/dissertation//modules/vpc"
  env_name          = var.env_name
  network           = var.network_address
  subnet_mask       = var.network_mask
  env_tag           = var.env_tag
}