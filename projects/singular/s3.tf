##############################################
# S3 Buckets
##############################################

module "codebuild_s3" {
  source        = "git::https://github.com/H00065796/dissertation//modules/s3"
  bucket_name   = "${var.env_name}-build"
  acl           = "private"
  environment   = var.env_name
  versioning    = true
  env_tag       = var.env_tag
}