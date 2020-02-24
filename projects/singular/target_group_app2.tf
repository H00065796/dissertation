##############################################
# Target Groups - App 2
##############################################

module "app2_target_group_blue" {
  source                = "git::https://github.com/H00065796/dissertation//modules/load_balancer_target_group"
  vpc_id                = module.vpc_main.id
  target_group_prefix   = var.app2_target_group1_prefix
  protocol              = var.app2_target_group_protocol
  health_check_protocol = var.app2_health_check_protocol
  health_check_path     = var.app2_health_check_path
  port                  = var.app2_target_group1_port
  target_type           = "instance"
  health_check_enabled  = true
  env_tag               = var.env_tag
  load_balancer_arn     = module.app_load_balancer.arn
}

module "app2_target_group_green" {
  source                = "git::https://github.com/H00065796/dissertation//modules/load_balancer_target_group"
  vpc_id                = module.vpc_main.id
  target_group_prefix   = var.app2_target_group2_prefix
  protocol              = var.app2_target_group_protocol
  health_check_protocol = var.app2_health_check_protocol
  health_check_path     = var.app2_health_check_path
  port                  = var.app2_target_group2_port
  target_type           = "instance"
  health_check_enabled  = true
  env_tag               = var.env_tag
  load_balancer_arn     = module.app_load_balancer.arn
}