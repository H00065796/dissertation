##############################################
# DB Subnet Group
##############################################

module "db_subnet_group" {
  source            = "git::https://github.com/H00065796/dissertation//modules/db_subnet_group"
  subnet_group_name = "${var.env_name}-mysql"
  subnets           = [module.rds_subnet1.id, module.rds_subnet2.id, module.rds_subnet3.id]
  env_tag           = var.env_tag
}