variable "name" {
    type = string
}
variable "launch_configuration" {
    type = string
}
variable "min_size" {
    type = number
}
variable "max_size" {
    type = number
}
variable "availability_zones" {
  type = list(string)
}
variable "vpc_zone_identifier" {
    type = list(string)
}
variable "env_tag" {
    type = string
}
variable "default_cooldown" {
    type = number
    default = 300
}
variable "desired_capacity" {
    type = number
}
variable "health_check_grace_period" {
    type = number
    default = 0
}
variable "health_check_type" {
    type = string
    default = "EC2"
}
variable "metrics_granularity" {
    type = string
    default = "1Minute"
}
variable "protect_from_scale_in" {
    type = string
    default = false
}
variable "service_linked_role_arn" {
    type = string
}
variable "target_group_arn" {
    type = list(string)
    default = []
}