##############################################
# IAM Instance Profile
##############################################

module "ec2_ecs_instance_iam_instance_profile" {
  source = "git::https://github.com/H00065796/dissertation//modules/iam_instance_profile"
  name   = "${data.terraform_remote_state.dev.outputs.env_name}-iam_instance_profile"
  role   = module.ec2_ecs_instance_iam_role.name
}