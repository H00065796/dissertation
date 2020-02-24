##############################################
# Load Balancer - Web
##############################################

module "web_load_balancer" {
  source                  = "git::https://github.com/H00065796/dissertation//modules/load_balancer_application"
  env_name                = var.env_name
  app_name                = var.web_name
  load_balancer_internal  = false
  subnet1                 = module.web_subnet1.id
  subnet2                 = module.web_subnet2.id
  security_groups         = module.web_lb_security_group.id
  deletion_protection     = true
  env_tag                 = var.env_tag
}