##############################################
# ECS Task - App
##############################################

module "app_ecs_task" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/ecs_task"
  app_name                 = var.app_name
  app_image_repository     = "${var.aws_account_id}.dkr.ecr.${var.region}.amazonaws.com/"
  app_image_version        = "latest"
  container_port           = var.app_target_group1_port
  host_port                = 0
  region                   = var.region
  family                   = var.app_name
  requires_compatibilities = "EC2"
  network_mode             = "bridge"
  cpu                      = 1024
  memory                   = 1024
  cloudwatch_log_group     = module.app_cloudwatch_log_group.name
  task_role_arn            = module.ecs_container_instance_iam_role.arn
  env_tag                  = var.env_tag
}