#######################################
# IAM Policy Document
# Assume CodeBuild
#######################################

data "aws_iam_policy_document" "assume_codebuild" {
  
  statement {
    sid = "AssumeCodeBuild"
    effect = "Allow"
    principals {
        type = "Service"
        identifiers = [
            "codebuild.amazonaws.com",
        ]       
  }
    actions = [
        "sts:AssumeRole",
    ]
  }
}