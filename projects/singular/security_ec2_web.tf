##############################################
# Security Group - Web
##############################################

module "web_security_group" {
  source         = "git::https://github.com/H00065796/dissertation//modules/security_group"
  name           = "${var.web_name}-ec2-security-group"
  description    = "ECS - EC2 Security Group"
  vpc_id         = module.vpc_main.id
  env_tag        = var.env_tag
}

##############################################
# Ingress Rules
##############################################

module "web_security_rules_ingress_lb" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_group_rules"
  type                     = "ingress"
  from_port                = 0
  to_port                  = 65535
  protocol                 = "tcp"
  source_security_group_id = module.web_lb_security_group.id
  security_group_id        = module.web_security_group.id
  description              = "Web LB Traffic"
}

##############################################
# Egress Rules
##############################################

module "web_security_rules_egress_all" {
  source            = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = var.destination_network
  security_group_id = module.web_security_group.id
  description       = "Web to All"
}