# Account and Attributes
output "aws_account_id" { value = var.aws_account_id }
output "env_name" { value = var.env_name }
output "env_tag" { value = var.env_tag }

# VPC
output "vpc_id" { value = module.vpc_main.id }

# Subnets
output "web_subnet1_id" { value = module.web_subnet1.id }
output "web_subnet2_id" { value = module.web_subnet2.id }
output "web_subnet3_id" { value = module.web_subnet3.id }
output "web_subnet1_name" { value = var.web_subnet1_name }
output "web_subnet2_name" { value = var.web_subnet2_name }
output "web_subnet3_name" { value = var.web_subnet3_name }
output "web_subnet_mask" { value = var.web_subnet_mask }
output "web_subnets_mask" { value = var.web_subnets_mask }

output "app_subnet1_id" { value = module.app_subnet1.id }
output "app_subnet2_id" { value = module.app_subnet2.id }
output "app_subnet3_id" { value = module.app_subnet3.id }
output "app_subnet1_name" { value = var.app_subnet1_name }
output "app_subnet2_name" { value = var.app_subnet2_name }
output "app_subnet3_name" { value = var.app_subnet3_name }
output "app_subnet_mask" { value = var.app_subnet_mask }
output "app_subnets_mask" { value = var.app_subnets_mask }

output "nat_subnet1_id" { value = module.nat_subnet1.id }
output "nat_subnet2_id" { value = module.nat_subnet2.id }
output "nat_subnet3_id" { value = module.nat_subnet3.id }
output "nat_subnet1_name" { value = var.nat_subnet1_name }
output "nat_subnet2_name" { value = var.nat_subnet2_name }
output "nat_subnet3_name" { value = var.nat_subnet3_name }
output "nat_subnet_mask" { value = var.nat_subnet_mask }
output "nat_subnets_mask" { value = var.nat_subnets_mask }

output "rds_subnet1_id" { value = module.rds_subnet1.id }
output "rds_subnet2_id" { value = module.rds_subnet2.id }
output "rds_subnet3_id" { value = module.rds_subnet3.id }
output "rds_subnet1_name" { value = var.rds_subnet1_name }
output "rds_subnet2_name" { value = var.rds_subnet2_name }
output "rds_subnet3_name" { value = var.rds_subnet3_name }
output "rds_subnet_mask" { value = var.rds_subnet_mask }
output "rds_subnets_mask" { value = var.rds_subnets_mask }

##############################################

# S3 CodeBuild Bucket
output "codebuild_s3_id" { value = module.codebuild_s3.id }
output "codebuild_s3_arn" { value = module.codebuild_s3.arn }
output "codebuild_s3_bucket_domain_name" { value = module.codebuild_s3.bucket_domain_name }
output "codebuild_s3_name" { value = module.codebuild_s3.name }

##############################################

# CodeBuild Projects
output "web_codebuild_project_id" { value = module.web_codebuild_project.id }
output "app_codebuild_project_id" { value = module.app_codebuild_project.id }
output "app2_codebuild_project_id" { value = module.app2_codebuild_project.id }

# CodeBuild IAM Role and Policy
output "codebuild_iam_role_id" { value = module.codebuild_iam_role.id }
output "codebuild_iam_role_name" { value = module.codebuild_iam_role.name }
output "codebuild_iam_role_arn" { value = module.codebuild_iam_role.arn }

output "codebuild_iam_role_policy_id" { value = module.codebuild_iam_role_policy.id }
output "codebuild_iam_role_policy_name" { value = module.codebuild_iam_role_policy.name }

##############################################

# CodeDeploy App
output "web_codedeploy_id" { value = module.web_codedeploy.id }
output "web_codedeploy_name" { value = module.web_codedeploy.name }

output "app_codedeploy_id" { value = module.app_codedeploy.id }
output "app_codedeploy_name" { value = module.app_codedeploy.name }

# CodeDeploy IAM Role and Policy
output "codedeploy_iam_role_id" { value = module.codedeploy_iam_role.id }
output "codedeploy_iam_role_name" { value = module.codedeploy_iam_role.name }
output "codedeploy_iam_role_arn" { value = module.codedeploy_iam_role.arn }

output "codedeploy_iam_role_policy_id" { value = module.codedeploy_iam_role_policy.id }
output "codedeploy_iam_role_policy_name" { value = module.codedeploy_iam_role_policy.name }

##############################################

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

# Load Balancer - Web
output "web_load_balancer_id" { value = module.web_load_balancer.id }
output "web_load_balancer_arn" { value = module.web_load_balancer.arn }
output "web_load_balancer_dns_name" { value = module.web_load_balancer.dns_name }

# Load Balancer Target Group Blue - Web
output "web_target_group_blue_id" { value = module.web_target_group_blue.id }
output "web_target_group_blue_arn" { value = module.web_target_group_blue.arn }
output "web_target_group_blue_name" { value = module.web_target_group_blue.name }

# Load Balancer Target Group Green - Web
output "web_target_group_green_id" { value = module.web_target_group_green.id }
output "web_target_group_green_arn" { value = module.web_target_group_green.arn }
output "web_target_group_green_name" { value = module.web_target_group_green.name }

# Load Balancer Listener Blue - Web
output "web_load_balancer_listener_blue_id" { value = module.web_load_balancer_listener_blue.id }
output "web_load_balancer_listener_blue_arn" { value = module.web_load_balancer_listener_blue.arn }

# Load Balancer Listener Green - Web
output "web_load_balancer_listener_green_id" { value = module.web_load_balancer_listener_green.id }
output "web_load_balancer_listener_green_arn" { value = module.web_load_balancer_listener_green.arn }

##############################################

# Load Balancer - App
output "app_load_balancer_id" { value = module.app_load_balancer.id }
output "app_load_balancer_arn" { value = module.app_load_balancer.arn }
output "app_load_balancer_dns_name" { value = module.app_load_balancer.dns_name }

# Load Balancer Target Group Blue - App
output "app_target_group_blue_id" { value = module.app_target_group_blue.id }
output "app_target_group_blue_arn" { value = module.app_target_group_blue.arn }
output "app_target_group_blue_name" { value = module.app_target_group_blue.name }

# Load Balancer Target Group Green - App
output "app_target_group_green_id" { value = module.app_target_group_green.id }
output "app_target_group_green_arn" { value = module.app_target_group_green.arn }
output "app_target_group_green_name" { value = module.app_target_group_green.name }

# Load Balancer Listener Blue - App
output "app_load_balancer_listener_blue_id" { value = module.app_load_balancer_listener_blue.id }
output "app_load_balancer_listener_blue_arn" { value = module.app_load_balancer_listener_blue.arn }

# Load Balancer Listener Green - App
output "app_load_balancer_listener_green_id" { value = module.app_load_balancer_listener_green.id }
output "app_load_balancer_listener_green_arn" { value = module.app_load_balancer_listener_green.arn }