resource "aws_ecr_repository" "repo" {
  name = "${var.env_name}-${var.app_name}"

  tags = {
    Env = var.env_tag
  }
}