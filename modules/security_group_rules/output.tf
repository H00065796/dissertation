output "id" { value = aws_security_group_rule.main.id }
output "type" { value = aws_security_group_rule.main.type }
output "from_port" { value = aws_security_group_rule.main.from_port }
output "to_port" { value = aws_security_group_rule.main.to_port }
output "protocol" { value = aws_security_group_rule.main.protocol }
output "description" { value = aws_security_group_rule.main.description }