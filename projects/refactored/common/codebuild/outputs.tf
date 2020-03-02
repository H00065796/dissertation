# CodeBuild Projects
output "web_codebuild_project_id" { value = module.web_codebuild_project.id }
output "app_codebuild_project_id" { value = module.app_codebuild_project.id }
output "app2_codebuild_project_id" { value = module.app2_codebuild_project.id }

# CodeBuild IAM Role and Policy
output "codebuild_iam_role_id" { value = module.codebuild_iam_role.id }
output "codebuild_iam_role_name" { value = module.codebuild_iam_role.name }
output "codebuild_iam_role_arn" { value = module.codebuild_iam_role.arn }

output "codebuild_iam_role_policy_id" { value = module.codebuild_iam_role_policy.id }
output "codebuild_iam_role_policy_name" { value = module.codebuild_iam_role_policy.name }