##############################################
# Service Linked Role
##############################################

module "web_service_linked_role" {
  source             = "git::https://github.com/H00065796/dissertation//modules/iam_service_linked_role"
  service_name       = "autoscaling.amazonaws.com"
  env_name           = data.terraform_remote_state.dev.outputs.env_name
  app_name           = data.terraform_remote_state.dev.outputs.web_name
  description        = "Role to allow calls on behalf of autoscaling service"
}

module "app_service_linked_role" {
  source             = "git::https://github.com/H00065796/dissertation//modules/iam_service_linked_role"
  service_name       = "autoscaling.amazonaws.com"
  env_name           = data.terraform_remote_state.dev.outputs.env_name
  app_name           = data.terraform_remote_state.dev.outputs.app_name
  description        = "Role to allow calls on behalf of autoscaling service"
}