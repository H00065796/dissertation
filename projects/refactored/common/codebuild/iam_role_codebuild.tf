##############################################
# IAM Role for Codebuild
##############################################

module "codebuild_iam_role" {
  source              = "git::https://github.com/H00065796/dissertation//modules/iam_role"
  name                = "${data.terraform_remote_state.dev.outputs.env_name}-role-codebuild"
  description         = "Role for CodeBuild"
  env_tag             = data.terraform_remote_state.dev.outputs.env_tag
  assume_role_policy  = data.aws_iam_policy_document.assume_codebuild.json
}

##############################################
# IAM Policy for Codebuild
##############################################

module "codebuild_iam_role_policy" {
  source              = "git::https://github.com/H00065796/dissertation//modules/iam_policy"
  name                = "${data.terraform_remote_state.dev.outputs.env_name}-policy-codebuild"
  role                = module.codebuild_iam_role.id
  policy              = data.aws_iam_policy_document.codebuild.json
}