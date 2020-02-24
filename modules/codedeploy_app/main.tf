resource "aws_codedeploy_app" "main" {
  compute_platform = var.compute_platform
  name             = var.name
}