##############################################
# Autoscaling Group - Web
##############################################

module "web_autoscaling_group" {
  source                    = "git::https://github.com/H00065796/dissertation//modules/autoscaling_group"
  name                      = "TF-ASG-${var.env_name}-${var.web_name}"
  default_cooldown          = 300
  desired_capacity          = 1
  health_check_grace_period = 0
  health_check_type         = "EC2"
  launch_configuration      = module.web_launch_configuration_v2.name
  max_size                  = 2
  metrics_granularity       = "1Minute"
  min_size                  = 0
  protect_from_scale_in     = false
  service_linked_role_arn   = module.web_service_linked_role.arn
  availability_zones        = [var.az_1, var.az_2, var.az_3]
  vpc_zone_identifier       = [module.app_subnet1.id, module.app_subnet2.id, module.app_subnet3.id]
  env_tag                   = var.env_tag
}