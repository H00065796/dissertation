resource "aws_lb_target_group" "main" {

  name = "${var.target_group_prefix}-${var.target_type}-${var.env_tag}"
  protocol    = var.protocol
  port        = var.port
  vpc_id      = var.vpc_id
  target_type = var.target_type

  health_check {
    path                = var.health_check_path
    enabled             = var.health_check_enabled
    healthy_threshold   = var.health_check_healthy_threshold
    interval            = var.health_check_interval
    matcher             = var.health_check_matcher
    port                = var.health_check_port
    protocol            = var.health_check_protocol
    timeout             = var.health_check_timeout
    unhealthy_threshold = var.health_check_unhealthy_threshold
  }

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Env = var.env_tag
  }
}