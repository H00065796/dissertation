# CodeDeploy App
output "web_codedeploy_id" { value = module.web_codedeploy.id }
output "web_codedeploy_name" { value = module.web_codedeploy.name }

output "app_codedeploy_id" { value = module.app_codedeploy.id }
output "app_codedeploy_name" { value = module.app_codedeploy.name }

# CodeDeploy IAM Role and Policy
output "codedeploy_iam_role_id" { value = module.codedeploy_iam_role.id }
output "codedeploy_iam_role_name" { value = module.codedeploy_iam_role.name }
output "codedeploy_iam_role_arn" { value = module.codedeploy_iam_role.arn }

output "codedeploy_iam_role_policy_id" { value = module.codedeploy_iam_role_policy.id }
output "codedeploy_iam_role_policy_name" { value = module.codedeploy_iam_role_policy.name }
