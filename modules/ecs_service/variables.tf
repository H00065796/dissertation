variable "name" {
  type = string
}
variable "cluster" {
  type = string
}
variable "task_definition" {
  type = string
}
variable "desired_count" {
  type = number
}
variable "min_healthy_percent" {
  type = number
}
variable "max_percent" {
  type = number
}
variable "launch_type" {
  type = string
}
variable "target_group_arn" {
  type = string
}
variable "container_name" {
  type = string
}
variable "container_port" {
  type = string
}
variable "deployment_type" {
  type    = string
  default = "ECS"
}
variable "ecs_managed_tags" {
  type    = string
  default = false
}
variable "health_check" {
  type    = number
  default = 0
}
variable "iam_role" {
  type    = string
  default = "aws-service-role"
}
variable "scheduling_strategy" {
  type    = string
  default = "REPLICA"
}
variable "listener_arn" {
  type = string
}