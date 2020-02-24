resource "aws_db_subnet_group" "main" {
  name          = var.subnet_group_name
  subnet_ids    = var.subnets

  tags = {
    Name        = var.subnet_group_name
    Env         = var.env_tag
  }
}