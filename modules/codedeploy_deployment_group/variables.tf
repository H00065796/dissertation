variable "codedeploy_app_name" {
  type = string
}
variable "deployment_config_name" {
  type = string
}
variable "deployment_group_name" {
  type = string
}
variable "iam_service_role" {
  type = string
}
variable "rollback_enabled" {
  type    = string
  default = null
}
variable "rollback_events" {
  type    = string
  default = null
}
variable "deployment_timeout_action" {
  type    = string
  default = null
}
variable "termination_action" {
  type    = string
  default = null
}
variable "termination_wait_time" {
  type    = string
  default = null
}
variable "deployment_option" {
  type    = string
  default = null
}
variable "deployment_type" {
  type    = string
  default = "BLUE_GREEN"
}
variable "ecs_cluster_name" {
  type = string
}
variable "ecs_service_name" {
  type = string
}
variable "listener_arn_blue" {
  type = string
}
variable "listener_arn_green" {
  type    = string
  default = null
}
variable "target_group_name_blue" {
  type = string
}
variable "target_group_name_green" {
  type    = string
  default = null
}