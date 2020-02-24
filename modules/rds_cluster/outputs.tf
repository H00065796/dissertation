output "arn" { value = aws_rds_cluster.main.arn }
output "id" { value = aws_rds_cluster.main.id }
output "cluster_identifier" { value = aws_rds_cluster.main.cluster_identifier }
output "engine" { value = aws_rds_cluster.main.engine }
output "engine_version" { value = aws_rds_cluster.main.engine_version }
output "cluster_name" { value = var.cluster_name }