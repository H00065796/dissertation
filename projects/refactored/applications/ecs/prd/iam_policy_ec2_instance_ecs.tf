##############################################
# IAM Policy
# EC2 ECS Instalce
##############################################

module "ec2_ecs_instance_iam_role_policy" {
  source         = "git::https://github.com/H00065796/dissertation//modules/iam_policy"
  name           = "role-policy-iam_role"
  role           = module.ec2_ecs_instance_iam_role.id
  policy         = data.aws_iam_policy_document.ecs.json
}