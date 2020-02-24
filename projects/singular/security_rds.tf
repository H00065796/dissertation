##############################################
# Security Group - RDS
##############################################

module "rds_security_group" {
  source         = "git::https://github.com/H00065796/dissertation//modules/security_group"
  name           = "rds-security-group"
  description    = "RDS Security Group"
  vpc_id         = module.vpc_main.id
  env_tag        = var.env_tag
}

##############################################
# Ingress Rules
##############################################

module "rds_security_rules_ingress_app1" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  cidr_blocks              = "${var.app_subnet1}${var.app_subnet_mask}"
  security_group_id        = module.rds_security_group.id
  description              = "RDS Traffic from App 1"
}

module "rds_security_rules_ingress_app2" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  cidr_blocks              = "${var.app_subnet2}${var.app_subnet_mask}"
  security_group_id        = module.rds_security_group.id
  description              = "RDS Traffic from App 2"
}

module "rds_security_rules_ingress_app3" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  cidr_blocks              = "${var.app_subnet3}${var.app_subnet_mask}"
  security_group_id        = module.rds_security_group.id
  description              = "RDS Traffic from App 3"
}

##############################################
# Egress Rules
##############################################

module "rds_security_rules_egress_app1" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "egress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  cidr_blocks              = "${var.app_subnet1}${var.app_subnet_mask}"
  security_group_id        = module.rds_security_group.id
  description              = "RDS Traffic to App 1"
}

module "rds_security_rules_egress_app2" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "egress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  cidr_blocks              = "${var.app_subnet2}${var.app_subnet_mask}"
  security_group_id        = module.rds_security_group.id
  description              = "RDS Traffic to App 2"
}

module "rds_security_rules_egress_app3" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "egress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  cidr_blocks              = "${var.app_subnet3}${var.app_subnet_mask}"
  security_group_id        = module.rds_security_group.id
  description              = "RDS Traffic to App 3"
}