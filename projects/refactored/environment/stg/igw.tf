##############################################
# Internet Gateway
##############################################

module "internet_gateway" {
  source  = "git::https://github.com/H00065796/dissertation//modules/internet_gateway"
  vpc_id  = module.vpc_main.id
  env_tag = var.env_tag
}