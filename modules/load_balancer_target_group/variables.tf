variable "target_group_prefix" {
  type = string
}
variable "protocol" {
  type = string
}
variable "port" {
  type = number
}
variable "vpc_id" {
  type = string
}
variable "target_type" {
  type = string
}
variable "env_tag" {
  type = string
}
variable "health_check_path" {
  type    = string
  default = null
}
variable "health_check_enabled" {
  type    = bool
  default = true
}
variable "health_check_healthy_threshold" {
  type    = string
  default = null
}
variable "health_check_interval" {
  type    = string
  default = null
}
variable "health_check_matcher" {
  type    = string
  default = null
}
variable "health_check_port" {
  type    = string
  default = "traffic-port"
}
variable "health_check_protocol" {
  type    = string
  default = null
}
variable "health_check_timeout" {
  type    = string
  default = null
}
variable "health_check_unhealthy_threshold" {
  type    = string
  default = null
}
variable "load_balancer_arn" {
  type = string
}