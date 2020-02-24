variable "app_name" {
    type = string
}
variable "app_image_repository" {
    type = string
}
variable "app_image_version" {
    type = string
}
variable "container_port" {
    type = number
}
variable "host_port" {
    type = number
}
variable "region" {
    type = string
}
variable "family" {
    type = string
}
variable "requires_compatibilities" {
    type = string
}
variable "network_mode" {
    type = string
}
variable "cpu" {
    type = number
}
variable "memory" {
    type = number
}
variable "env_tag" {
    type = string
}
variable "cloudwatch_log_group" {
    type = string
}
variable "task_role_arn" { 
    type    = string
    default = null
}
variable "execution_role_arn" {
    type    = string
    default = null
}