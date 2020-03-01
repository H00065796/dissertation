#######################################
# IAM Policy Document
# ECS
#######################################

data "aws_iam_policy_document" "ecs" {
  statement {
    sid = "ECSTaskManagement"

    effect = "Allow"

    actions = [
        "ec2:AttachNetworkInterface",
        "ec2:CreateNetworkInterface",
        "ec2:CreateNetworkInterfacePermission",
        "ec2:DeleteNetworkInterface",
        "ec2:DeleteNetworkInterfacePermission",
        "ec2:Describe*",
        "ec2:DetachNetworkInterface",
        "elasticloadbalancing:DeregisterInstancesFromLoadBalancer",
        "elasticloadbalancing:DeregisterTargets",
        "elasticloadbalancing:Describe*",
        "elasticloadbalancing:RegisterInstancesWithLoadBalancer",
        "elasticloadbalancing:RegisterTargets",
        "route53:ChangeResourceRecordSets",
        "route53:CreateHealthCheck",
        "route53:DeleteHealthCheck",
        "route53:Get*",
        "route53:List*",
        "route53:UpdateHealthCheck",
        "servicediscovery:DeregisterInstance",
        "servicediscovery:Get*",
        "servicediscovery:List*",
        "servicediscovery:RegisterInstance",
        "servicediscovery:UpdateInstanceCustomHealthStatus",
    ]

    resources = [
      "*",
    ]
  }

  statement {
    sid = "ECSTagging"

    effect = "Allow"

    actions = [
        "ec2:CreateTags",
    ]

    resources = [
      "arn:aws:ec2:*:*:network-interface/*",
    ]
  }
  
}