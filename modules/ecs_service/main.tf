resource "aws_ecs_service" "main" {
    cluster                            = var.cluster
    deployment_maximum_percent         = var.max_percent
    deployment_minimum_healthy_percent = var.min_healthy_percent
    desired_count                      = var.desired_count
    enable_ecs_managed_tags            = var.ecs_managed_tags
    health_check_grace_period_seconds  = var.health_check
    iam_role                           = var.iam_role
    launch_type                        = var.launch_type
    name                               = var.name
    scheduling_strategy                = var.scheduling_strategy
    task_definition                    = var.task_definition

    deployment_controller {
        type = var.deployment_type
    }

    load_balancer {
        container_name   = var.container_name
        container_port   = var.container_port
        target_group_arn = var.target_group_arn
    }
}