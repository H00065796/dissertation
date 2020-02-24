##############################################
# CodeDeploy - App
##############################################

module "app_codedeploy" {
  source           = "git::https://github.com/H00065796/dissertation//modules/codedeploy_app"
  name             = "${var.env_name}-${var.app_name}"
  compute_platform = "ECS"
}

##############################################
# CodeDeploy - Deployment Group for App
##############################################

module "app_deployment_group" {
  source                    = "git::https://github.com/H00065796/dissertation//modules/codedeploy_deployment_group"
  codedeploy_app_name       = module.app_codedeploy.name
  deployment_config_name    = "CodeDeployDefault.ECSAllAtOnce"
  deployment_group_name     = "${var.env_name}-${var.app_name}-deployment-group"
  iam_service_role          = module.codedeploy_iam_role.arn
  rollback_enabled          = true
  rollback_events           = "DEPLOYMENT_FAILURE"
  deployment_timeout_action = "CONTINUE_DEPLOYMENT"
  termination_action        = "TERMINATE"
  termination_wait_time     = 0
  deployment_option         = "WITH_TRAFFIC_CONTROL"
  deployment_type           = "BLUE_GREEN"
  ecs_cluster_name          = module.app_ecs_cluster.name
  ecs_service_name          = module.app_ecs_service.name
  listener_arn_blue         = module.app_load_balancer_listener_blue.arn
  listener_arn_green        = module.app_load_balancer_listener_green.arn
  target_group_name_blue    = module.app_target_group_blue.name
  target_group_name_green   = module.app_target_group_green.name
}