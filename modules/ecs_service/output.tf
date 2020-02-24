output "id" { value = aws_ecs_service.main.id }
output "name" { value = aws_ecs_service.main.name }
output "cluster" { value = aws_ecs_service.main.cluster }
output "iam_role" { value = aws_ecs_service.main.iam_role }
output "desired_count" { value = aws_ecs_service.main.desired_count }