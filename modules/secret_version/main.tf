resource "aws_secretsmanager_secret_version" "main" {
  secret_id     = var.secret_manager_id
  secret_string = var.secrets_value
}