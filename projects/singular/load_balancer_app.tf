##############################################
# Load Balancer - App
##############################################

module "app_load_balancer" {
  source                  = "git::https://github.com/H00065796/dissertation//modules/load_balancer_application"
  env_name                = var.env_name
  app_name                = var.app_name
  load_balancer_internal  = true
  subnet1                 = module.app_subnet1.id
  subnet2                 = module.app_subnet2.id
  security_groups         = module.app_lb_security_group.id
  deletion_protection     = true
  env_tag                 = var.env_tag
}