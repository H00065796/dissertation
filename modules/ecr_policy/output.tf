output "ecr_policy_repository" { value = aws_ecr_repository_policy.main.repository }
output "ecr_policy_registry" { value = aws_ecr_repository_policy.main.registry_id }