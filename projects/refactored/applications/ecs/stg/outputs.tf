##############################################
# Web
##############################################

# ECS Cluster - Web
output "web_ecs_cluster_id" { value = module.web_ecs_cluster.id }
output "web_ecs_cluster_name" { value = module.web_ecs_cluster.name }

# ECS Task - Web
output "web_ecs_task_arn" { value = module.web_ecs_task.arn }
output "web_ecs_task_family" { value = module.web_ecs_task.family }

# ECS Services - Web
output "web_ecs_service_id" { value = module.web_ecs_service.id }
output "web_ecs_service_name" { value = module.web_ecs_service.name }
output "web_ecs_service_cluster" { value = module.web_ecs_service.cluster }

##############################################
# App
##############################################

# ECS Cluster - App
output "app_ecs_cluster_id" { value = module.app_ecs_cluster.id }
output "app_ecs_cluster_name" { value = module.app_ecs_cluster.name }

# ECS Task - App
output "app_ecs_task_arn" { value = module.app_ecs_task.arn }
output "app_ecs_task_family" { value = module.app_ecs_task.family }

# ECS Services - App
output "app_ecs_service_id" { value = module.app_ecs_service.id }
output "app_ecs_service_name" { value = module.app_ecs_service.name }
output "app_ecs_service_cluster" { value = module.app_ecs_service.cluster }

##############################################
# Security
##############################################

output "app_security_group_id" { value = module.app_security_group.id }
output "app_security_group_arn" { value = module.app_security_group.arn }

output "web_security_group_id" { value = module.web_security_group.id }
output "web_security_group_arn" { value = module.web_security_group.arn }
