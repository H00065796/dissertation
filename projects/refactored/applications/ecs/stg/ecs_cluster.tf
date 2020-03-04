##############################################
# ECS Cluster
##############################################

module "app_ecs_cluster" {
  source   = "git::https://github.com/H00065796/dissertation//modules/ecs_cluster"
  env_name = data.terraform_remote_state.env.outputs.env_name
  app_name = data.terraform_remote_state.env.outputs.app_name
  env_tag  = data.terraform_remote_state.env.outputs.env_tag
}

module "web_ecs_cluster" {
  source   = "git::https://github.com/H00065796/dissertation//modules/ecs_cluster"
  env_name = data.terraform_remote_state.env.outputs.env_name
  app_name = data.terraform_remote_state.env.outputs.web_name
  env_tag  = data.terraform_remote_state.env.outputs.env_tag
}