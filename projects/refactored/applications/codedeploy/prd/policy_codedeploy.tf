#######################################
# IAM Policy Document
# CodeDeploy
#######################################

data "aws_iam_policy_document" "codedeploy" {
  
  statement {
    sid = "ECSAndOtherServices"
    effect = "Allow"
    actions = [
        "ecs:DescribeServices",
        "ecs:CreateTaskSet",
        "ecs:UpdateServicePrimaryTaskSet",
        "ecs:DeleteTaskSet",
        "elasticloadbalancing:DescribeTargetGroups",
        "elasticloadbalancing:DescribeListeners",
        "elasticloadbalancing:ModifyListener",
        "elasticloadbalancing:DescribeRules",
        "elasticloadbalancing:ModifyRule",
        "lambda:InvokeFunction",
        "cloudwatch:DescribeAlarms",
        "sns:Publish",
        "s3:GetObject",
        "s3:GetObjectMetadata",
        "s3:GetObjectVersion"
    ]
    resources = [
      "*",
    ]
  }

  statement {
    sid = "IAMPassRoleECS"
    effect = "Allow"
    actions = [
        "iam:PassRole",
    ]
    condition {
        test = "StringLike"
        variable = "iam:PassedToService"
        values = [
            "ecs-tasks.amazonaws.com",
        ]
    }
    resources = [
      "*",
    ]
  }

}