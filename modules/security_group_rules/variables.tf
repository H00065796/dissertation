variable "security_group_id" {
  type = string
}
variable "type" {
  type = string
}
variable "from_port" {
  type = number
}
variable "to_port" {
  type = number
}
variable "protocol" {
  type = string
}
variable "source_security_group_id" {
  type    = string
  default = null
}
variable "description" {
  type = string
}