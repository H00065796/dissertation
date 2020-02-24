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
variable "cidr_blocks" {
    type = string
}
variable "security_group_id" {
    type = string
}
variable "description" {
    type = string
}