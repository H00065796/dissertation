##############################################
# Autoscaling Group - App
##############################################

module "app_autoscaling_group" {
  source                    = "git::https://github.com/H00065796/dissertation//modules/autoscaling_group"
  name                      = "TF-ASG-${data.terraform_remote_state.env.outputs.env_name}-${data.terraform_remote_state.env.outputs.app_name}"
  availability_zones        = [data.terraform_remote_state.env.outputs.az_1, data.terraform_remote_state.env.outputs.az_2, data.terraform_remote_state.env.outputs.az_3]
  default_cooldown          = 300
  desired_capacity          = 1
  health_check_grace_period = 0
  health_check_type         = "EC2"
  launch_configuration      = module.app_launch_configuration_v2.name
  max_size                  = 2
  metrics_granularity       = "1Minute"
  min_size                  = 0
  protect_from_scale_in     = false
  service_linked_role_arn   = module.app_service_linked_role.arn
  vpc_zone_identifier       = [data.terraform_remote_state.env.outputs.app_subnet1_id, data.terraform_remote_state.env.outputs.app_subnet2_id, data.terraform_remote_state.env.outputs.app_subnet3_id]
  env_tag                   = data.terraform_remote_state.env.outputs.env_tag
}