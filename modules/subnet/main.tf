resource "aws_subnet" "main" {
  vpc_id            = var.vpc_id
  cidr_block        = "${var.subnet}${var.subnet_mask}"
  availability_zone = var.availability_zone

  tags = {
    Name            = "${var.env_tag}-${var.subnet_name}"
    Env             = var.env_tag
  }
}