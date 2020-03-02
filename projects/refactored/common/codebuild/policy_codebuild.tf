#######################################
# IAM Policy Document
# CodeBuild
#######################################

data "aws_iam_policy_document" "codebuild" {
  
  statement {
    sid = "S3BucketPolicy"
    effect = "Allow"
    actions = [
        "s3:*",
    ]
    resources = [
      "arn:aws:s3:::${data.terraform_remote_state.dev.outputs.env_name}-build",
      "arn:aws:s3:::${data.terraform_remote_state.dev.outputs.env_name}-build/*",
    ]
  }

  statement {
    sid = "ECRImagePolicy"
    effect = "Allow"
    actions = [
        "ecr:GetAuthorizationToken",
        "ecr:BatchCheckLayerAvailability",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetRepositoryPolicy",
        "ecr:DescribeRepositories",
        "ecr:ListImages",
        "ecr:DescribeImages",
        "ecr:BatchGetImage",
        "ecr:InitiateLayerUpload",
        "ecr:UploadLayerPart",
        "ecr:CompleteLayerUpload",
        "ecr:PutImage",
    ]
    resources = [
      "*",
    ]
  }

}