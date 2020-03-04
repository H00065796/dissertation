#######################################
# IAM Policy Document
# Assume EC2
#######################################

data "aws_iam_policy_document" "assume_ec2" {
  
  statement {
    sid = "AssumeEC2"
    effect = "Allow"
    principals {
        type = "Service"
        identifiers = [
            "ec2.amazonaws.com",
        ]       
  }
    actions = [
        "sts:AssumeRole",
    ]
  }
}