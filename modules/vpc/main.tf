resource "aws_vpc" "main" {
  cidr_block  = "${var.network}${var.subnet_mask}"
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = {
    Name      = var.env_name
    Env       = var.env_tag
  }
}
