resource "aws_ecs_cluster" "main" {
  name = "${var.env_name}-${var.app_name}"
  tags = {
    Env = var.env_tag
  }
}