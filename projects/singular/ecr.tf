##############################################
# ECR
##############################################

module "web_ecr" {
  source       = "git::https://github.com/H00065796/dissertation//modules/ecr"
  env_name     = var.env_name
  app_name     = var.web_name
  env_tag      = var.env_tag
}
module "app_ecr" {
  source       = "git::https://github.com/H00065796/dissertation//modules/ecr"
  env_name     = var.env_name
  app_name     = var.app_name
  env_tag      = var.env_tag
}

module "app2_ecr" {
  source       = "git::https://github.com/H00065796/dissertation//modules/ecr"
  env_name     = var.env_name
  app_name     = "${var.app_name}-02"
  env_tag      = var.env_tag
}