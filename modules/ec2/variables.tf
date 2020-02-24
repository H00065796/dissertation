variable "region" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "subnet_id" {
  type = string
}
variable "server_name" {
  type = string
}
variable "eip_flag" {
  default = false
}
variable "ami_image_id" {
  type = string
}
variable "vpc_security_group_ids" {
  type    = list
  default = []
}
variable "vpc_security_group_id" {
  type    = string
  default = null
}
variable "shutdown_behavior" {
  type = string
}
variable "disable_termination" {
  type = string
}
variable "iam_instance_profile" {
  type    = string
  default = null
}
variable "key_name" {
  type    = string
  default = null
}
variable "user_data" {
  type    = string
  default = null
}
variable "cpu_credits" {
  type    = string
  default = null
}
variable "env_tag" {
  type = string
}