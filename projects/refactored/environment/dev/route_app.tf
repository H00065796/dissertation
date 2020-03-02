##############################################
# Route to NAT Gateway - App
##############################################

module "app1_route_nat1" {
  source              = "git::https://github.com/H00065796/dissertation//modules/route_nat"
  vpc_id              = module.vpc_main.id
  subnet_name         = var.app_subnet1_name
  destination_network = var.destination_network
  gateway             = module.nat_gateway1.id
  subnet_id           = module.app_subnet1.id
  env_tag             = var.env_tag
}

module "app2_route_nat2" {
  source              = "git::https://github.com/H00065796/dissertation//modules/route_nat"
  vpc_id              = module.vpc_main.id
  subnet_name         = var.app_subnet2_name
  destination_network = var.destination_network
  gateway             = module.nat_gateway2.id
  subnet_id           = module.app_subnet2.id
  env_tag             = var.env_tag
}

module "app3_route_nat3" {
  source              = "git::https://github.com/H00065796/dissertation//modules/route_nat"
  vpc_id              = module.vpc_main.id
  subnet_name         = var.app_subnet3_name
  destination_network = var.destination_network
  gateway             = module.nat_gateway3.id
  subnet_id           = module.app_subnet3.id
  env_tag             = var.env_tag
}