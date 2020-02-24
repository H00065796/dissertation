resource "aws_codedeploy_deployment_group" "main" {
  app_name               = var.codedeploy_app_name
  deployment_config_name = var.deployment_config_name
  deployment_group_name  = var.deployment_group_name
  service_role_arn       = var.iam_service_role

  auto_rollback_configuration {
    enabled = var.rollback_enabled
    events  = [var.rollback_events]
  }

  blue_green_deployment_config {
    deployment_ready_option {
      action_on_timeout = var.deployment_timeout_action
    }

    terminate_blue_instances_on_deployment_success {
      action                           = var.termination_action
      termination_wait_time_in_minutes = var.termination_wait_time
    }
  }

  deployment_style {
    deployment_option = var.deployment_option
    deployment_type   = var.deployment_type
  }

  ecs_service {
    cluster_name = var.ecs_cluster_name
    service_name = var.ecs_service_name
  }

  load_balancer_info {
    target_group_pair_info {
      prod_traffic_route {
        listener_arns = [var.listener_arn_blue]
      }
	  
	  test_traffic_route {
        listener_arns = [var.listener_arn_green]
      }

      target_group {
        name = var.target_group_name_blue
      }

      target_group {
        name = var.target_group_name_green
      }
    }
  }
}