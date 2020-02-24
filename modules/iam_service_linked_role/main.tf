resource "aws_iam_service_linked_role" "main" {
  aws_service_name  = var.service_name
  custom_suffix     = "${var.env_name}-${var.app_name}"
  description       = var.description
}