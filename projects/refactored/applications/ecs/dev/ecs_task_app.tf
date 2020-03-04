##############################################
# ECS Task - App
##############################################

module "app_ecs_task" {
  source                   = "git::https://github.com/H00065796/dissertation//modules/ecs_task"
  app_name                 = data.terraform_remote_state.env.outputs.app_name
  app_image_repository     = "${data.terraform_remote_state.env.outputs.aws_account_id}.dkr.ecr.${data.terraform_remote_state.env.outputs.region}.amazonaws.com/"
  app_image_version        = "latest"
  container_port           = var.app_target_group1_port
  host_port                = 0
  region                   = data.terraform_remote_state.env.outputs.region
  family                   = data.terraform_remote_state.env.outputs.app_name
  requires_compatibilities = "EC2"
  network_mode             = "bridge"
  cpu                      = 1024
  memory                   = 1024
  cloudwatch_log_group     = module.app_cloudwatch_log_group.name
  task_role_arn            = module.ecs_container_instance_iam_role.arn
  env_tag                  = data.terraform_remote_state.env.outputs.env_tag
}