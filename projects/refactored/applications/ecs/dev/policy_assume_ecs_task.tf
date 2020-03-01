#######################################
# IAM Policy Document
# Assume EC2
#######################################

data "aws_iam_policy_document" "assume_ecs_task" {
  
  statement {
    sid = "AssumeECSTaskRole"
    effect = "Allow"
    principals {
        type = "Service"
        identifiers = [
            "ecs-tasks.amazonaws.com",
        ]       
  }
    actions = [
        "sts:AssumeRole",
    ]
  }
}