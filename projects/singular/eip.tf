##############################################
# Elastic IP - NAT Gateways
##############################################

module "nat_eip1" {
  source      = "git::https://github.com/H00065796/dissertation//modules/eip"
  name        = "${var.env_tag}-${var.nat_subnet1_name}"
  env_tag     = var.env_tag
}

module "nat_eip2" {
  source      = "git::https://github.com/H00065796/dissertation//modules/eip"
  name        = "${var.env_tag}-${var.nat_subnet2_name}"
  env_tag     = var.env_tag
}

module "nat_eip3" {
  source      = "git::https://github.com/H00065796/dissertation//modules/eip"
  name        = "${var.env_tag}-${var.nat_subnet3_name}"
  env_tag     = var.env_tag
}