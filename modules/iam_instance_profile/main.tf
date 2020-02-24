resource "aws_iam_instance_profile" "main" {
  name   = var.name
  role   = var.role
}