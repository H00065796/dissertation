variable "name" {
  type = string
}
variable "description" {
  type = string
}
variable "environment" {
  type = string
}
variable "build_timeout" {
  type = number
  default = 10
}
variable "service_role" {
  type = string
}
variable "artifacts_type" {
  type = string
}
variable "cache_type" {
  type = string
}
variable "compute_type" {
  type = string
}
variable "compute_image" {
  type = string
}
variable "compute_os" {
  type = string
}
variable "s3_type" {
  type = string
}
variable "s3_location" {
  type = string
}
variable "s3_buildspec" {
  type = string
}
variable "privileged_mode" {
  type = string
}
variable "env_tag" {
  type = string
}
variable "environment_variables" {
  type = list
  default = []
}