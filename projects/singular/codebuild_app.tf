##############################################
# CodeBuild - App
##############################################

module "app_codebuild_project" {
  source          = "git::https://github.com/H00065796/dissertation//modules/codebuild"
  name            = "${var.env_name}-${var.app_name}"
  description     = "Code build project for ${var.env_name}-${var.app_name}"
  environment     = var.env_name
  build_timeout   = "5"
  service_role    = module.codebuild_iam_role.arn
  artifacts_type  = "NO_ARTIFACTS"
  cache_type      = "NO_CACHE"
  compute_type    = "BUILD_GENERAL1_MEDIUM"
  compute_image   = "aws/codebuild/docker:18.09.0"
  compute_os      = "LINUX_CONTAINER"
  privileged_mode = true
  s3_type         = "S3"
  s3_location     = "${var.env_name}-build/${var.app_name}/"
  env_tag         = var.env_tag
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