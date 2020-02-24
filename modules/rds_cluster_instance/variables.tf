variable "instance_count" {
  type = number
  default = 1
}
variable "instance_name" {
  type = string
}
variable "instance_identifier" {
  type = string
}
variable "rds_cluster_id" {
  type = string
}
variable "instance_class" {
  type = string
  default = "db.t3.micro"
}
variable "cluster_engine" {
  type = string
  default = "aurora-mysql"
}
variable "cluster_engine_version" {
  type = string
  default = "5.7.mysql_aurora.2.03.2"
}
variable "db_subnet_group_name" {
  type = string
  default = null
}
variable "publicly_accessible" {
  type = bool
  default = false
}
variable "promotion_tier" {
  type = number
  default = 0
}
variable "env_tag" {
  type = string
}
variable "db_subnet_group_arn" {
  type = string
}