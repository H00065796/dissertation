# Route Table
resource "aws_route_table" "route_subnet" {
  vpc_id    = var.vpc_id

  tags = {
    Name    = "${var.env_tag}-${var.subnet_name}"
    Env     = var.env_tag
  }
}

# Route
resource "aws_route" "route_subnet" {
  route_table_id         = aws_route_table.route_subnet.id
  destination_cidr_block = var.destination_network
  gateway_id             = var.gateway
}

# Route Table Association
resource "aws_route_table_association" "route_subnet" {
  subnet_id       = var.subnet_id
  route_table_id  = aws_route_table.route_subnet.id
}