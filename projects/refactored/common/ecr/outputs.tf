# ECR - Web
output "web_ecr_arn" { value = module.web_ecr.arn }
output "web_ecr_name" { value = module.web_ecr.name }
output "web_ecr_registry_id" { value = module.web_ecr.registry_id }
output "web_ecr_repository_url" { value = module.web_ecr.repository_url }

# ECR - App
output "app_ecr_arn" { value = module.app_ecr.arn }
output "app_ecr_name" { value = module.app_ecr.name }
output "app_ecr_registry_id" { value = module.app_ecr.registry_id }
output "app_ecr_repository_url" { value = module.app_ecr.repository_url }