##############################################
# Load Balancer - App
##############################################

module "app_load_balancer" {
  source                  = "git::https://github.com/H00065796/dissertation//modules/load_balancer_application"
  env_name                = data.terraform_remote_state.dev.outputs.env_name
  app_name                = data.terraform_remote_state.dev.outputs.app_name
  load_balancer_internal  = true
  subnet1                 = data.terraform_remote_state.dev.outputs.app_subnet1_id
  subnet2                 = data.terraform_remote_state.dev.outputs.app_subnet2_id
  security_groups         = module.app_lb_security_group.id
  deletion_protection     = true
  env_tag                 = data.terraform_remote_state.dev.outputs.env_tag
}