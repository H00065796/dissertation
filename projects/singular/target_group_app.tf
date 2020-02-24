##############################################
# Target Groups - App
##############################################

module "app_target_group_blue" {
  source                = "git::https://github.com/H00065796/dissertation//modules/load_balancer_target_group"
  vpc_id                = module.vpc_main.id
  target_group_prefix   = var.app_target_group1_prefix
  protocol              = var.app_target_group_protocol
  health_check_protocol = var.app_health_check_protocol
  health_check_path     = var.app_health_check_path
  port                  = var.app_target_group1_port
  target_type           = "instance"
  health_check_enabled  = true
  env_tag               = var.env_tag
  load_balancer_arn     = module.app_load_balancer.arn
}

module "app_target_group_green" {
  source                = "git::https://github.com/H00065796/dissertation//modules/load_balancer_target_group"
  vpc_id                = module.vpc_main.id
  target_group_prefix   = var.app_target_group2_prefix
  protocol              = var.app_target_group_protocol
  health_check_protocol = var.app_health_check_protocol
  health_check_path     = var.app_health_check_path
  port                  = var.app_target_group2_port
  target_type           = "instance"
  health_check_enabled  = true
  env_tag               = var.env_tag
  load_balancer_arn     = module.app_load_balancer.arn
}