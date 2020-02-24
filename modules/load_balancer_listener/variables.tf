variable "load_balancer_arn" {
  type = string
}
variable "target_group_arn" {
  type = string
}
variable "protocol" {
  type = string
}
variable "port" {
  type = number
}
variable "ssl_policy" {
  type    = string
  default = null
}
variable "certificate_arn" {
  type    = string
  default = null
}