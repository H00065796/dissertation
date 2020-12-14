variable "env_name" {
  type = string
}
variable "app_name" {
  type = string
}
variable "load_balancer_internal" {
  type = string
}
variable "subnet1" {
  type = string
}
variable "subnet2" {
  type = string
}
variable "security_groups" {
  type    = string
  default = null
}
variable "deletion_protection" {
  type = string
}
variable "tag_env" {
  type = string
}
