##############################################
# ECR
##############################################

module "app_ecr" {
  source       = "git::https://github.com/H00065796/dissertation//modules/ecr"
  env_name     = data.terraform_remote_state.dev.outputs.env_name
  app_name     = data.terraform_remote_state.dev.outputs.app_name
  env_tag      = data.terraform_remote_state.dev.outputs.env_tag
}

module "web_ecr" {
  source       = "git::https://github.com/H00065796/dissertation//modules/ecr"
  env_name     = data.terraform_remote_state.dev.outputs.env_name
  app_name     = data.terraform_remote_state.dev.outputs.web_name
  env_tag      = data.terraform_remote_state.dev.outputs.env_tag
}

module "app2_ecr" {
  source       = "git::https://github.com/H00065796/dissertation//modules/ecr"
  env_name     = data.terraform_remote_state.dev.outputs.env_name
  app_name     = "${data.terraform_remote_state.dev.outputs.app_name}-02"
  env_tag      = data.terraform_remote_state.dev.outputs.env_tag
}

