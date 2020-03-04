##############################################
# Variable Outputs
##############################################

# Account and Attributes
output "aws_account_id" { value = var.aws_account_id }
output "env_name" { value = var.env_name }
output "env_tag" { value = var.env_tag }
output "region" { value = var.region }
output "az_1" { value = var.az_1 }
output "az_2" { value = var.az_2 }
output "az_3" { value = var.az_3 }

# Network
output "network_address" { value = var.network_address }
output "network_mask" { value = var.network_mask }
output "destination_network" { value = var.destination_network }

# Subnet Addresses and Names
output "web_subnet1" { value = var.web_subnet1 }
output "web_subnet2" { value = var.web_subnet2 }
output "web_subnet3" { value = var.web_subnet3 }
output "web_subnet1_name" { value = var.web_subnet1_name }
output "web_subnet2_name" { value = var.web_subnet2_name }
output "web_subnet3_name" { value = var.web_subnet3_name }
output "web_subnet_mask" { value = var.web_subnet_mask }
output "web_subnets_mask" { value = var.web_subnets_mask }

output "app_subnet1" { value = var.app_subnet1 }
output "app_subnet2" { value = var.app_subnet2 }
output "app_subnet3" { value = var.app_subnet3 }
output "app_subnet1_name" { value = var.app_subnet1_name }
output "app_subnet2_name" { value = var.app_subnet2_name }
output "app_subnet3_name" { value = var.app_subnet3_name }
output "app_subnet_mask" { value = var.app_subnet_mask }
output "app_subnets_mask" { value = var.app_subnets_mask }

output "nat_subnet1" { value = var.nat_subnet1 }
output "nat_subnet2" { value = var.nat_subnet2 }
output "nat_subnet3" { value = var.nat_subnet3 }
output "nat_subnet1_name" { value = var.nat_subnet1_name }
output "nat_subnet2_name" { value = var.nat_subnet2_name }
output "nat_subnet3_name" { value = var.nat_subnet3_name }
output "nat_subnet_mask" { value = var.nat_subnet_mask }
output "nat_subnets_mask" { value = var.nat_subnets_mask }

output "rds_subnet1" { value = var.rds_subnet1 }
output "rds_subnet2" { value = var.rds_subnet2 }
output "rds_subnet3" { value = var.rds_subnet3 }
output "rds_subnet1_name" { value = var.rds_subnet1_name }
output "rds_subnet2_name" { value = var.rds_subnet2_name }
output "rds_subnet3_name" { value = var.rds_subnet3_name }
output "rds_subnet_mask" { value = var.rds_subnet_mask }
output "rds_subnets_mask" { value = var.rds_subnets_mask }

# Application Properties
output "web_name" { value = var.web_name }
output "app_name" { value = var.app_name }
output "app2_name" { value = var.app_name }
output "rds_name" { value = var.rds_name }

##############################################
# Outputs
##############################################

# VPC
output "vpc_id" { value = module.vpc_main.id }

# Subnets
output "web_subnet1_id" { value = module.web_subnet1.id }
output "web_subnet2_id" { value = module.web_subnet2.id }
output "web_subnet3_id" { value = module.web_subnet3.id }

output "app_subnet1_id" { value = module.app_subnet1.id }
output "app_subnet2_id" { value = module.app_subnet2.id }
output "app_subnet3_id" { value = module.app_subnet3.id }

output "nat_subnet1_id" { value = module.nat_subnet1.id }
output "nat_subnet2_id" { value = module.nat_subnet2.id }
output "nat_subnet3_id" { value = module.nat_subnet3.id }

output "rds_subnet1_id" { value = module.rds_subnet1.id }
output "rds_subnet2_id" { value = module.rds_subnet2.id }
output "rds_subnet3_id" { value = module.rds_subnet3.id }