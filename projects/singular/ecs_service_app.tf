##############################################
# ECS Service
##############################################

module "app_ecs_service" {
  source              = "git::https://github.com/H00065796/dissertation//modules/ecs_service"
  name                = "${var.env_tag}-${var.app_name}-service"
  cluster             = module.app_ecs_cluster.id
  task_definition     = module.app_ecs_task.arn
  desired_count       = 0
  min_healthy_percent = 80
  max_percent         = 200
  launch_type         = "EC2"
  target_group_arn    = module.app_target_group_blue.arn
  listener_arn        = module.app_load_balancer_listener_blue.arn
  container_name      = var.app_name
  container_port      = var.app_target_group1_port
  deployment_type     = "CODE_DEPLOY"
  ecs_managed_tags    = false
  health_check        = 0
  iam_role            = "arn:aws:iam::${var.aws_account_id}:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
  scheduling_strategy = "REPLICA"
}