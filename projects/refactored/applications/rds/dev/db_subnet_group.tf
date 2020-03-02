##############################################
# DB Subnet Group
##############################################

module "db_subnet_group" {
  source            = "git::https://github.com/H00065796/dissertation//modules/db_subnet_group"
  subnet_group_name = "${data.terraform_remote_state.dev.outputs.env_name}-mysql"
  subnets           = [data.terraform_remote_state.dev.outputs.rds_subnet1_id, data.terraform_remote_state.dev.outputs.rds_subnet2_id, data.terraform_remote_state.dev.outputs.rds_subnet3_id]
  env_tag           = data.terraform_remote_state.dev.outputs.env_tag
}