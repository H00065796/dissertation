resource "aws_ecr_repository_policy" "main" {
  repository  = var.repository_name
  policy      = var.repository_policy
}