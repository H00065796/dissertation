##############################################
# ECS Service - Web
##############################################

module "web_ecs_service" {
  source              = "git::https://github.com/H00065796/dissertation//modules/ecs_service"
  name                = "${data.terraform_remote_state.env.outputs.env_tag}-${data.terraform_remote_state.env.outputs.web_name}-service"
  cluster             = module.web_ecs_cluster.id
  task_definition     = module.web_ecs_task.arn
  desired_count       = 0
  min_healthy_percent = 80
  max_percent         = 200
  launch_type         = "EC2"
  target_group_arn    = data.terraform_remote_state.lb.outputs.web_target_group_blue_arn
  listener_arn        = data.terraform_remote_state.lb.outputs.web_load_balancer_listener_blue_arn
  container_name      = data.terraform_remote_state.env.outputs.web_name
  container_port      = var.web_target_group1_port
  deployment_type     = "CODE_DEPLOY"
  ecs_managed_tags    = false
  health_check        = 0
  iam_role            = "arn:aws:iam::${data.terraform_remote_state.env.outputs.aws_account_id}:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
  scheduling_strategy = "REPLICA"
}