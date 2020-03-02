##############################################
# Load Balancer Listener - Web
##############################################

module "web_load_balancer_listener_blue" {
  source            = "git::https://github.com/H00065796/dissertation//modules/load_balancer_listener"
  load_balancer_arn = module.web_load_balancer.arn
  protocol          = var.web_listener_protocol
  port              = var.web_target_group1_port
  target_group_arn  = module.web_target_group_blue.arn
}

module "web_load_balancer_listener_green" {
  source            = "git::https://github.com/H00065796/dissertation//modules/load_balancer_listener"
  load_balancer_arn = module.web_load_balancer.arn
  protocol          = var.web_listener_protocol
  port              = var.web_target_group2_port
  target_group_arn  = module.web_target_group_green.arn
}