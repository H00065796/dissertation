##############################################
# RDS Cluster - MySQL
##############################################

module "mysql_rds_cluster" {
  source                            = "git::https://github.com/H00065796/dissertation//modules/rds_cluster"
  cluster_name                      = "${var.env_name}-mysql"
  availability_zones                = [var.az_1, var.az_2, var.az_3]
  cluster_engine                    = "aurora-mysql"
  cluster_engine_version            = "5.7.mysql_aurora.2.03.2"
  cluster_engine_mode               = "provisioned"
  database_name                     = "main_db"
  master_username                   = "db_master"
  master_password                   = module.mysql_master_secret_version.version_id
  retention_period                  = 5
  backup_window                     = "07:00-09:00"
  maintenance_window                = "sun:06:10-sun:06:40"
  skip_final_snapshot               = true
  db_cluster_parameter_group_name   = "default.aurora-mysql5.7"
  db_subnet_group_name              = module.db_subnet_group.name
  db_subnet_group_arn               = module.db_subnet_group.arn
  db_port                           = 3306
  env_tag                           = var.env_tag
  vpc_security_group_ids            = [ module.rds_security_group.id]
}