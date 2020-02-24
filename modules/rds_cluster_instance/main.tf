resource "aws_rds_cluster_instance" "main" {
  count                 = var.instance_count
  identifier            = "${var.instance_name}-${var.instance_identifier}"
  cluster_identifier    = var.rds_cluster_id
  engine                = var.cluster_engine
  engine_version        = var.cluster_engine_version
  instance_class        = var.instance_class
  db_subnet_group_name  = var.db_subnet_group_name
  publicly_accessible   = var.publicly_accessible
  promotion_tier        = var.promotion_tier

  tags = {
    Env = var.env_tag
  }
}