##############################################
# CodeDeploy - App
##############################################

module "web_codedeploy" {
  source           = "git::https://github.com/H00065796/dissertation//modules/codedeploy_app"
  name             = "${data.terraform_remote_state.env.outputs.env_name}-${data.terraform_remote_state.env.outputs.web_name}"
  compute_platform = "ECS"
}

##############################################
# CodeDeploy - Deployment Group for Web
##############################################

module "web_deployment_group" {
  source                    = "git::https://github.com/H00065796/dissertation//modules/codedeploy_deployment_group"
  codedeploy_app_name       = module.web_codedeploy.name
  deployment_config_name    = "CodeDeployDefault.ECSAllAtOnce"
  deployment_group_name     = "${data.terraform_remote_state.env.outputs.env_name}-${data.terraform_remote_state.env.outputs.web_name}-deployment-group"
  iam_service_role          = module.codedeploy_iam_role.arn
  rollback_enabled          = true
  rollback_events           = "DEPLOYMENT_FAILURE"
  deployment_timeout_action = "CONTINUE_DEPLOYMENT"
  termination_action        = "TERMINATE"
  termination_wait_time     = 0
  deployment_option         = "WITH_TRAFFIC_CONTROL"
  deployment_type           = "BLUE_GREEN"
  ecs_cluster_name          = data.terraform_remote_state.ecs.outputs.web_ecs_cluster_name
  ecs_service_name          = data.terraform_remote_state.ecs.outputs.web_ecs_service_name
  listener_arn_blue         = data.terraform_remote_state.lb.outputs.web_load_balancer_listener_blue_arn
  listener_arn_green        = data.terraform_remote_state.lb.outputs.web_load_balancer_listener_green_arn
  target_group_name_blue    = data.terraform_remote_state.lb.outputs.web_target_group_blue_name
  target_group_name_green   = data.terraform_remote_state.lb.outputs.web_target_group_green_name
}