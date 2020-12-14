variable "env_name" {
    type = string
}
variable "network" {
    type = string
}
variable "subnet_mask" {
    type = string
}
variable "env_tag" {
    type = string
}
variable "enable_dns_hostnames" {
  type = bool
  default = false
}
