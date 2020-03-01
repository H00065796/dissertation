#######################################
# IAM Policy Document
# Assume CodeDeploy
#######################################

data "aws_iam_policy_document" "assume_codedeploy" {
  
  statement {
    sid = "AssumeCodeDeploy"
    effect = "Allow"
    principals {
        type = "Service"
        identifiers = [
            "codedeploy.amazonaws.com",
        ]       
  }
    actions = [
        "sts:AssumeRole",
    ]
  }
}