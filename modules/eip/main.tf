resource "aws_eip" "elastic_ip" {
  vpc     = "true"

  tags = {
    Name  = var.name
    Env   = var.env_tag
  }
}