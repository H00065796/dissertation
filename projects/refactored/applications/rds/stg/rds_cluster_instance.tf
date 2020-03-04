##############################################
# Random Id - MySQL
##############################################

module "mysql_instance_identifier" {
  source        = "git::https://github.com/H00065796/dissertation//modules/random_id"
  byte_length   = 5
  keeper_id     = "${data.terraform_remote_state.env.outputs.env_name}-mysql-instance"
}

##############################################
# RDS Cluster Instance - MySQL
##############################################

module "mysql_rds_cluster_instance" {
  source                    = "git::https://github.com/H00065796/dissertation//modules/rds_cluster_instance"
  instance_count            = 1
  instance_name             = "${data.terraform_remote_state.env.outputs.env_name}-mysql-instance"
  instance_identifier       = module.mysql_instance_identifier.dec
  rds_cluster_id            = module.mysql_rds_cluster.id
  cluster_engine            = "aurora-mysql"
  cluster_engine_version    = "5.7.mysql_aurora.2.03.2"
  instance_class            = "db.t3.small"
  db_subnet_group_name      = module.db_subnet_group.name
  db_subnet_group_arn       = module.db_subnet_group.arn
  publicly_accessible       = false
  env_tag                   = data.terraform_remote_state.env.outputs.env_tag
}