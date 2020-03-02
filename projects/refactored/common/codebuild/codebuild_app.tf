##############################################
# CodeBuild - App
##############################################

module "app_codebuild_project" {
  source          = "git::https://github.com/H00065796/dissertation//modules/codebuild"
  name            = "${data.terraform_remote_state.dev.outputs.env_name}-${data.terraform_remote_state.dev.outputs.app_name}"
  description     = "Code build project for ${data.terraform_remote_state.dev.outputs.env_name}-${data.terraform_remote_state.dev.outputs.app_name}"
  environment     = data.terraform_remote_state.dev.outputs.env_name
  build_timeout   = 5
  service_role    = module.codebuild_iam_role.arn
  artifacts_type  = "NO_ARTIFACTS"
  cache_type      = "NO_CACHE"
  compute_type    = "BUILD_GENERAL1_MEDIUM"
  compute_image   = "aws/codebuild/docker:18.09.0"
  compute_os      = "LINUX_CONTAINER"
  privileged_mode = true
  s3_type         = "S3"
  s3_location     = "${data.terraform_remote_state.dev.outputs.env_name}-build/${data.terraform_remote_state.dev.outputs.app_name}/"
  env_tag         = data.terraform_remote_state.dev.outputs.env_tag
  s3_buildspec    = ""

  environment_variables = [
    {
      name  = "TARGET_ENV"
      value = "env"
    },
    {
      name  = "RELEASE_VER"
      value = "1.00.00"
    }
  ]
}