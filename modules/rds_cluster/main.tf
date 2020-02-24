resource "aws_rds_cluster" "main" {
  cluster_identifier                = var.cluster_name
  engine                            = var.cluster_engine
  engine_mode                       = var.cluster_engine_mode
  engine_version                    = var.cluster_engine_version
  availability_zones                = var.availability_zones
  database_name                     = var.database_name
  master_username                   = var.master_username
  master_password                   = var.master_password
  backup_retention_period           = var.retention_period
  preferred_backup_window           = var.backup_window
  preferred_maintenance_window      = var.maintenance_window
  final_snapshot_identifier         = var.final_snapshot_identifier
  skip_final_snapshot               = var.skip_final_snapshot
  db_cluster_parameter_group_name   = var.db_cluster_parameter_group_name
  db_subnet_group_name              = var.db_subnet_group_name
  port                              = var.db_port
  vpc_security_group_ids            = var.vpc_security_group_ids
  tags = {
    Env                             = var.env_tag
  }
}