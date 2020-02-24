##############################################
# Security Group - App LB
##############################################

module "app_lb_security_group" {
  source         = "git::https://github.com/H00065796/dissertation//modules/security_group"
  name           = "${var.app_name}-lb-security-group"
  description    = "App LB Security Group"
  vpc_id         = module.vpc_main.id
  env_tag        = var.env_tag
}

##############################################
# Ingress Rules
##############################################

# App 1 - Target Group 1

module "app_lb_security_rules_ingress_http_web1" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app_target_group1_port
  to_port                  = var.app_target_group1_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet1}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 1"
}

module "app_lb_security_rules_ingress_http_web2" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app_target_group1_port
  to_port                  = var.app_target_group1_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet2}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 2"
}

module "app_lb_security_rules_ingress_http_web3" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app_target_group1_port
  to_port                  = var.app_target_group1_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet3}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 3"
}

# App 1 - Target Group 2

module "app_tg2_lb_security_rules_ingress_http_web1" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app_target_group2_port
  to_port                  = var.app_target_group2_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet1}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 1"
}

module "app_tg2_lb_security_rules_ingress_http_web2" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app_target_group2_port
  to_port                  = var.app_target_group2_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet2}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 2"
}

module "app_tg2_lb_security_rules_ingress_http_web3" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app_target_group2_port
  to_port                  = var.app_target_group2_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet3}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 3"
}

# App 2 - Target Group 1

module "app2_tg1_lb_security_rules_ingress_http_web1" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app2_target_group1_port
  to_port                  = var.app2_target_group1_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet1}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 1"
}

module "app2_tg1_lb_security_rules_ingress_http_web2" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app2_target_group1_port
  to_port                  = var.app2_target_group1_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet2}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 2"
}

module "app2_tg1_lb_security_rules_ingress_http_web3" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app2_target_group1_port
  to_port                  = var.app2_target_group1_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet3}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 3"
}

# App 2 - Target Group 2

module "app2_tg2_lb_security_rules_ingress_http_web1" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app2_target_group2_port
  to_port                  = var.app2_target_group2_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet1}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 1"
}

module "app2_tg2_lb_security_rules_ingress_http_web2" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app2_target_group2_port
  to_port                  = var.app2_target_group2_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet2}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 2"
}

module "app2_tg2_lb_security_rules_ingress_http_web3" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type                     = "ingress"
  from_port                = var.app2_target_group2_port
  to_port                  = var.app2_target_group2_port
  protocol                 = "tcp"
  cidr_blocks              = "${var.web_subnet3}${var.web_subnet_mask}"
  security_group_id        = module.app_lb_security_group.id
  description              = "App Traffic from Web 3"
}

##############################################
# Egress Rules
##############################################

module "app_lb_security_rules_egress_all" {
  source            = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = var.destination_network
  security_group_id = module.app_lb_security_group.id
  description       = "App LB to All"
}