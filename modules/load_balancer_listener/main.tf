resource "aws_lb_listener" "main" {
  load_balancer_arn = var.load_balancer_arn
  protocol          = var.protocol
  port              = var.port
  ssl_policy        = var.ssl_policy
  certificate_arn   = var.certificate_arn

  default_action {
    target_group_arn = var.target_group_arn
    type             = "forward"
  }

}