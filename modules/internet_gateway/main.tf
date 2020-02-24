resource "aws_internet_gateway" "main" {
  vpc_id            = var.vpc_id

  tags = {
    Name            = var.env_tag
    Env             = var.env_tag
  }
}