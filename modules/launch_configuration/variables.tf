variable "name" {
  type = string
}
variable "image_id" {
  type = string
}
variable "instance_type" {
  type = string
}
variable "associate_public_ip_address" {
  type    = bool
  default = true
}
variable "ebs_optimized" {
  type    = bool
  default = false
}
variable "enable_monitoring" {
  type    = bool
  default = true
}
variable "iam_instance_profile" {
  type = string
}
variable "key_name" {
  type    = string
  default = null
}
variable "security_group_id" {
  type = string
}
variable "user_data" {
  type    = string
  default = null
}
variable "delete_on_termination" {
  type    = bool
  default = false
}
variable "device_name" {
  type    = string
  default = "/dev/xvdcz"
}
variable "encrypted" {
  type    = bool
  default = false
}
variable "iops" {
  type    = string
  default = "0"
}
variable "no_device" {
  type    = bool
  default = false
}
variable "volume_type" {
  type    = string
  default = "gp2"
}
variable "volume_size" {
  type    = string
  default = "22"
}