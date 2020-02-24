resource "aws_nat_gateway" "main" {
  subnet_id         = var.subnet_id
  allocation_id     = var.eip_id

  tags = {
    Name            = "${var.env_tag}-${var.subnet_name}"
    Env             = var.env_tag
  }
}