##############################################
# CloudWatch Log Group
##############################################

module "web_cloudwatch_log_group" {
  source  = "git::https://github.com/H00065796/dissertation//modules/cloudwatch_log_group"
  name    = "/ecs/${data.terraform_remote_state.env.outputs.env_name}-${data.terraform_remote_state.env.outputs.web_name}"
  env_tag = data.terraform_remote_state.env.outputs.env_tag
}

module "app_cloudwatch_log_group" {
  source  = "git::https://github.com/H00065796/dissertation//modules/cloudwatch_log_group"
  name    = "/ecs/${data.terraform_remote_state.env.outputs.env_name}-${data.terraform_remote_state.env.outputs.app_name}"
  env_tag = data.terraform_remote_state.env.outputs.env_tag
}