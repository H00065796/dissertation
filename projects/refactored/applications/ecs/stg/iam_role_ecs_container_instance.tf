##############################################
# IAM Role - ECS Container Instance
##############################################

module "ecs_container_instance_iam_role" {
  source              = "git::https://github.com/H00065796/dissertation//modules/iam_role"
  name                = "${data.terraform_remote_state.dev.outputs.env_name}-ecs-container-instance"
  description         = "Role for ECS Container Instance"
  assume_role_policy  = data.aws_iam_policy_document.assume_ecs_task.json
  env_tag             = data.terraform_remote_state.dev.outputs.env_tag
}

