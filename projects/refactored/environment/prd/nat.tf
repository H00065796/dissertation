##############################################
# NAT Gateways
##############################################

module "nat_gateway1" {
  source      = "git::https://github.com/H00065796/dissertation//modules/nat"
  subnet_id   = module.nat_subnet1.id
  subnet_name = var.nat_subnet1_name
  eip_id      = module.nat_eip1.id
  env_tag     = var.env_tag
}

module "nat_gateway2" {
  source      = "git::https://github.com/H00065796/dissertation//modules/nat"
  subnet_id   = module.nat_subnet2.id
  subnet_name = var.nat_subnet2_name
  eip_id      = module.nat_eip2.id
  env_tag     = var.env_tag
}

module "nat_gateway3" {
  source      = "git::https://github.com/H00065796/dissertation//modules/nat"
  subnet_id   = module.nat_subnet3.id
  subnet_name = var.nat_subnet3_name
  eip_id      = module.nat_eip3.id
  env_tag     = var.env_tag
}