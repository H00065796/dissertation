variable "cluster_name" {
  type = string
}
variable "cluster_engine" {
  type = string
  default = "aurora-mysql"
}
variable "cluster_engine_version" {
  type = string
  default = "5.7.mysql_aurora.2.03.2"
}
variable "cluster_engine_mode" {
  type = string
  default = "provisioned"
}
variable "availability_zones" {
  type = list(string)
}
variable "database_name" {
  type = string
}
variable "master_username" {
  type = string
}
variable "master_password" {
  type = string
}
variable "retention_period" {
  type = number
  default = 7
}
variable "backup_window" {
  type = string
  default = "07:00-09:00"
}
variable "maintenance_window" {
  type = string
  default = "sun:06:10-sun:06:40"
}
variable "skip_final_snapshot" {
  type = bool
  default = true
}
variable "final_snapshot_identifier" {
  type = string
  default = null
}
variable "db_cluster_parameter_group_name" {
  type = string
  default = null
}
variable "db_subnet_group_name" {
  type = string
  default = null
}
variable "db_port" {
  type = number
  default = 3306
}
variable "storage_encrypted" {
  type = bool
  default = false
}
variable "vpc_security_group_ids" {
  type = list(string)
  default = null
}
variable "env_tag" {
  type = string
}
# Ensuring Dependency
variable "db_subnet_group_arn" {
  type = string
}
variable "backtrack_window" { 
  type = number
  default = 0
}
variable "deletion_protection" {
  type = bool
  default = false
}
variable "enabled_cloudwatch_logs_exports" {
  type = list(string)
  default = null
}
variable "iam_database_authentication_enabled" {
  type = bool
  default = false
}
variable "iam_roles" {
  type = list(string)
  default = null
}