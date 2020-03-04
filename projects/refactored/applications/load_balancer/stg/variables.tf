##############################################
# Application Properties
##############################################

variable "web_listener_protocol" { type = string }
variable "web_health_check_protocol" { type = string }
variable "web_health_check_path" { type = string }
variable "web_target_group_protocol" { type = string }
variable "web_target_group1_port" { type = string }
variable "web_target_group2_port" { type = string }
variable "web_target_group1_prefix" { type = string }
variable "web_target_group2_prefix" { type = string }

variable "app_listener_protocol" { type = string }
variable "app_health_check_protocol" { type = string }
variable "app_health_check_path" { type = string }
variable "app_target_group_protocol" { type = string }
variable "app_target_group1_port" { type = string }
variable "app_target_group2_port" { type = string }
variable "app_target_group1_prefix" { type = string }
variable "app_target_group2_prefix" { type = string }

variable "app2_listener_protocol" { type = string }
variable "app2_health_check_protocol" { type = string }
variable "app2_health_check_path" { type = string }
variable "app2_target_group_protocol" { type = string }
variable "app2_target_group1_port" { type = string }
variable "app2_target_group2_port" { type = string }
variable "app2_target_group1_prefix" { type = string }
variable "app2_target_group2_prefix" { type = string }