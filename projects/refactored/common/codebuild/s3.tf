##############################################
# S3 Buckets
##############################################

module "codebuild_s3" {
  source        = "git::https://github.com/H00065796/dissertation//modules/s3"
  bucket_name   = "${data.terraform_remote_state.dev.outputs.env_name}-build"
  acl           = "private"
  environment   = data.terraform_remote_state.dev.outputs.env_name
  versioning    = true
  env_tag       = data.terraform_remote_state.dev.outputs.env_tag
}