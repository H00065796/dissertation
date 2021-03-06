##############################################
# Route to Internet Gateway - Web
##############################################

module "web1_route_igw" {
  source              = "git::https://github.com/H00065796/dissertation//modules/route_igw"
  vpc_id              = module.vpc_main.id
  subnet_name         = var.web_subnet1_name
  destination_network = var.destination_network
  gateway             = module.internet_gateway.id
  subnet_id           = module.web_subnet1.id
  env_tag             = var.env_tag
}

module "web2_route_igw" {
  source              = "git::https://github.com/H00065796/dissertation//modules/route_igw"
  vpc_id              = module.vpc_main.id
  subnet_name         = var.web_subnet2_name
  destination_network = var.destination_network
  gateway             = module.internet_gateway.id
  subnet_id           = module.web_subnet2.id
  env_tag             = var.env_tag
}

module "web3_route_igw" {
  source              = "git::https://github.com/H00065796/dissertation//modules/route_igw"
  vpc_id              = module.vpc_main.id
  subnet_name         = var.web_subnet3_name
  destination_network = var.destination_network
  gateway             = module.internet_gateway.id
  subnet_id           = module.web_subnet3.id
  env_tag             = var.env_tag
}