# S3 Bucket
resource "aws_s3_bucket" "main" {
  bucket        = var.bucket_name
  acl           = var.acl

  versioning {
    enabled     = var.versioning
  }

  tags = {
    Name        = var.bucket_name
    Env         = var.env_tag
  }
}

# Block public access
resource "aws_s3_bucket_public_access_block" "public_access_block" {
  bucket = aws_s3_bucket.main.id

  block_public_acls = var.block_public_acls
  ignore_public_acls = var.ignore_public_acls
  block_public_policy = var.block_public_policy
  restrict_public_buckets = var.restrict_public_buckets
}