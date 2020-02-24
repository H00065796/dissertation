##############################################
# Cloudwatch Log Group
##############################################

module "web_cloudwatch_log_group" {
  source  = "git::https://github.com/H00065796/dissertation//modules/cloudwatch_log_group"
  name    = "/ecs/${var.env_name}-${var.web_name}"
  env_tag = var.env_tag
}

module "app_cloudwatch_log_group" {
  source  = "git::https://github.com/H00065796/dissertation//modules/cloudwatch_log_group"
  name    = "/ecs/${var.env_name}-${var.app_name}"
  env_tag = var.env_tag
}