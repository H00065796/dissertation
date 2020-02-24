data "template_file" "task_definition" {
  template = "${file("${path.module}/templates/ecs_task.tpl")}"

  vars = {
    app_name             = var.app_name
    app_image_repository = var.app_image_repository
    app_image_version    = var.app_image_version
    cpu                  = var.cpu
    memory               = var.memory
    container_port       = var.container_port
    host_port            = var.host_port
    region               = var.region
    log_group_name       = var.cloudwatch_log_group
  }
}

resource "aws_ecs_task_definition" "main" {
  container_definitions    = data.template_file.task_definition.rendered
  family                   = var.family
  network_mode             = var.network_mode
  requires_compatibilities = [var.requires_compatibilities]
  cpu                      = var.cpu
  memory                   = var.memory
  task_role_arn            = var.task_role_arn
  execution_role_arn       = var.execution_role_arn

  tags = {
    Env = var.env_tag
  }

}