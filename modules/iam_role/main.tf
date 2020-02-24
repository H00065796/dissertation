resource "aws_iam_role" "main" {
  name               = var.name
  description        = var.description
  assume_role_policy = var.assume_role_policy

  tags = {
    Env = var.env_tag
  }
}