output "arn" { value = aws_vpc.main.arn }
output "id" { value = aws_vpc.main.id }
output "cidr" { value = aws_vpc.main.cidr_block }
output "default_network_acl_id" { value = aws_vpc.main.default_network_acl_id }
output "default_route_table_id" { value = aws_vpc.main.default_route_table_id }
output "default_security_group_id" { value = aws_vpc.main.default_security_group_id }