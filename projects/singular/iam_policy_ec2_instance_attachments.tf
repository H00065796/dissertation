##############################################
# IAM Policy
# AmazonEC2ContainerServiceforEC2Role
##############################################

module "aws_iam_role_policy_attachment_EC2ContainerServiceforEC2Role" {
  source = "git::https://github.com/H00065796/dissertation//modules/iam_role_policy_attachment"
  role = module.ec2_ecs_instance_iam_role.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEC2ContainerServiceforEC2Role"
}

##############################################
# IAM Policy
# AmazonECS_FullAccess
##############################################

module "aws_iam_role_policy_attachment_ECS_FullAccess" {
  source = "git::https://github.com/H00065796/dissertation//modules/iam_role_policy_attachment"
  role = module.ec2_ecs_instance_iam_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
}