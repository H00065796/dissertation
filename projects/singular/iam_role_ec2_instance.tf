##############################################
# IAM Role - EC2
##############################################

module "ec2_ecs_instance_iam_role" {
  source              = "git::https://github.com/H00065796/dissertation//modules/iam_role"
  name                = "${var.env_name}-ec2-ecs-instance"
  description         = "Role for EC2 ECS Instance"
  assume_role_policy  = data.aws_iam_policy_document.assume_ec2.json
  env_tag             = var.env_tag
}