variable "bucket_name" {
  type = string
}
variable "acl" {
  type = string
}
variable "versioning" {
  type = string
}
variable "environment" {
  type = string
}
variable "policy" {
  type = string
  default = null
}
variable "env_tag" {
  type = string
}
variable block_public_acls {
  type = bool
  default = true
}
variable ignore_public_acls {
  type = bool
  default = true
}
variable block_public_policy {
  type = bool
  default = true
}
variable restrict_public_buckets {
  type = bool
  default = true
}