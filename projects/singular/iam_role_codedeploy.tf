##############################################
# IAM Role for CodeDeploy
##############################################

module "codedeploy_iam_role" {
  source              = "git::https://github.com/H00065796/dissertation//modules/iam_role"
  name                = "${var.env_name}-role-codedeploy"
  description         = "Role for CodeDeploy"
  env_tag             = var.env_tag
  assume_role_policy  = data.aws_iam_policy_document.assume_codedeploy.json
}

##############################################
# IAM Policy for CodeDeploy
##############################################

module "codedeploy_iam_role_policy" {
  source              = "git::https://github.com/H00065796/dissertation//modules/iam_policy"
  name                = "${var.env_name}-policy-codedeploy"
  role                = module.codedeploy_iam_role.id
  policy              = data.aws_iam_policy_document.codedeploy.json
}