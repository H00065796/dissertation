resource "aws_autoscaling_group" "main" {
    availability_zones        = var.availability_zones
    default_cooldown          = var.default_cooldown
    desired_capacity          = var.desired_capacity
    health_check_grace_period = var.health_check_grace_period
    health_check_type         = var.health_check_type
    launch_configuration      = var.launch_configuration
    max_size                  = var.max_size
    metrics_granularity       = var.metrics_granularity
    min_size                  = var.min_size
    name                      = var.name
    protect_from_scale_in     = var.protect_from_scale_in
    service_linked_role_arn   = var.service_linked_role_arn
    vpc_zone_identifier       = var.vpc_zone_identifier
    target_group_arns         = var.target_group_arn

    tag {
        key = "Name"
        propagate_at_launch = true
        value = var.name
    }

    tag {
        key = "Env"
        propagate_at_launch = false
        value = var.env_tag
    }
}