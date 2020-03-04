##############################################
# Account and Attributes
##############################################

variable "aws_account_id" { type = string }
variable "env_name" { type = string }
variable "env_tag" { type = string }
variable "region" { type = string }
variable "az_1" { type = string }
variable "az_2" { type = string }
variable "az_3" { type = string }

##############################################
# Network
##############################################

variable "network_address" { type = string }
variable "network_mask" { type = string }
variable "destination_network" { type = string }

##############################################
# Subnet Addresses and Names
##############################################

variable "web_subnet1" { type = string }
variable "web_subnet2" { type = string }
variable "web_subnet3" { type = string }
variable "web_subnet1_name" { type = string }
variable "web_subnet2_name" { type = string }
variable "web_subnet3_name" { type = string }
variable "web_subnet_mask" { type = string }
variable "web_subnets_mask" { type = string }

variable "app_subnet1" { type = string }
variable "app_subnet2" { type = string }
variable "app_subnet3" { type = string }
variable "app_subnet1_name" { type = string }
variable "app_subnet2_name" { type = string }
variable "app_subnet3_name" { type = string }
variable "app_subnet_mask" { type = string }
variable "app_subnets_mask" { type = string }

variable "nat_subnet1" { type = string }
variable "nat_subnet2" { type = string }
variable "nat_subnet3" { type = string }
variable "nat_subnet1_name" { type = string }
variable "nat_subnet2_name" { type = string }
variable "nat_subnet3_name" { type = string }
variable "nat_subnet_mask" { type = string }
variable "nat_subnets_mask" { type = string }

variable "rds_subnet1" { type = string }
variable "rds_subnet2" { type = string }
variable "rds_subnet3" { type = string }
variable "rds_subnet1_name" { type = string }
variable "rds_subnet2_name" { type = string }
variable "rds_subnet3_name" { type = string }
variable "rds_subnet_mask" { type = string }
variable "rds_subnets_mask" { type = string }

##############################################
# Application Properties
##############################################

variable "web_name" { type = string }
variable "app_name" { type = string }
variable "app2_name" { type = string }
variable "rds_name" { type = string }