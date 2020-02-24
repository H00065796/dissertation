resource "aws_vpc" "main" {
  cidr_block  = "${var.network}${var.subnet_mask}"

  tags = {
    Name      = var.env_name
    Env       = var.env_tag
  }
}