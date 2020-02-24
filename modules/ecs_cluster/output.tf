output "id" { value = aws_ecs_cluster.main.id }
output "name" { value = "${var.env_name}-${var.app_name}" }