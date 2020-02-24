##############################################
# Target Groups - Web
##############################################

module "web_target_group_blue" {
  source                = "git::https://github.com/H00065796/dissertation//modules/load_balancer_target_group"
  vpc_id                = module.vpc_main.id
  target_group_prefix   = var.web_target_group1_prefix
  protocol              = var.web_target_group_protocol
  health_check_protocol = var.web_health_check_protocol
  health_check_path     = var.web_health_check_path
  port                  = var.web_target_group1_port
  target_type           = "instance"
  health_check_enabled  = true
  env_tag               = var.env_tag
  load_balancer_arn     = module.web_load_balancer.arn
}

module "web_target_group_green" {
  source                = "git::https://github.com/H00065796/dissertation//modules/load_balancer_target_group"
  vpc_id                = module.vpc_main.id
  target_group_prefix   = var.web_target_group2_prefix
  protocol              = var.web_target_group_protocol
  health_check_protocol = var.web_health_check_protocol
  health_check_path     = var.web_health_check_path
  port                  = var.web_target_group2_port
  target_type           = "instance"
  health_check_enabled  = true
  env_tag               = var.env_tag
  load_balancer_arn     = module.web_load_balancer.arn
}