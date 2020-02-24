resource "aws_security_group" "main" {
  name = var.name
  description = var.description
  vpc_id = var.vpc_id

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Env         = var.env_tag
  }
}