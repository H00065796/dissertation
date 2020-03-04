##############################################
# Security Group - App
##############################################

module "app_security_group" {
  source         = "git::https://github.com/H00065796/dissertation//modules/security_group"
  name           = "${data.terraform_remote_state.env.outputs.app_name}-ec2-security-group"
  description    = "ECS - EC2 Security Group"
  vpc_id         = data.terraform_remote_state.env.outputs.vpc_id
  env_tag        = data.terraform_remote_state.env.outputs.env_tag
}

##############################################
# Ingress Rules
##############################################

module "app_security_rules_ingress_lb" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/security_group_rules"
  type                     = "ingress"
  from_port                = 0
  to_port                  = 65535
  protocol                 = "tcp"
  source_security_group_id = data.terraform_remote_state.lb.outputs.app_lb_security_group_id
  security_group_id        = module.app_security_group.id
  description              = "App LB Traffic"
}

##############################################
# Egress Rules
##############################################

module "app_security_rules_egress_all" {
  source            = "git::https://github.com/H00065796/dissertation//modules/security_rules"
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = data.terraform_remote_state.env.outputs.destination_network
  security_group_id = module.app_security_group.id
  description       = "App to All"
}