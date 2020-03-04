# MySQL RDS Cluster

output "mysql_arn" { value = module.mysql_rds_cluster.arn }
output "mysql_id" { value = module.mysql_rds_cluster.id }
output "mysql_cluster_identifier" { value = module.mysql_rds_cluster.cluster_identifier }
output "mysql_engine" { value = module.mysql_rds_cluster.engine }
output "mysql_engine_version" { value = module.mysql_rds_cluster.engine_version }
output "mysql_cluster_name" { value = var.cluster_name }