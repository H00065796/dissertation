resource "aws_iam_role_policy" "main" {
  name   = var.name
  role   = var.role
  policy = var.policy
}