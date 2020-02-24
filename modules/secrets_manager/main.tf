resource "aws_secretsmanager_secret" "main" {
  name          = var.secrets_name
  description   = var.description
}