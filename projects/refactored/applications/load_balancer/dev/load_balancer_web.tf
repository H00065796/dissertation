##############################################
# Load Balancer - Web
##############################################

module "web_load_balancer" {
  source                  = "git::https://github.com/H00065796/dissertation//modules/load_balancer_application"
  env_name                = data.terraform_remote_state.env.outputs.env_name
  app_name                = data.terraform_remote_state.env.outputs.web_name
  load_balancer_internal  = false
  subnet1                 = data.terraform_remote_state.env.outputs.web_subnet1_id
  subnet2                 = data.terraform_remote_state.env.outputs.web_subnet2_id
  security_groups         = module.web_lb_security_group.id
  deletion_protection     = true
  env_tag                 = data.terraform_remote_state.env.outputs.env_tag
}