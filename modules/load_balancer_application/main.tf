resource "aws_lb" "main" {
  name                       = "${var.env_name}-${var.app_name}"
  internal                   = var.load_balancer_internal
  load_balancer_type         = "application"
  subnets                    = [var.subnet1, var.subnet2]
  security_groups            = [var.security_groups]
  enable_deletion_protection = var.deletion_protection
  
  tags = {
    Env = var.tag_env
  }
}
