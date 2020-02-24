resource "aws_cloudwatch_log_group" "main" {
  name = var.name

  tags = {
    Env = var.env_tag
  }
}