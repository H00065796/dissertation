##############################################
# Account and Attributes
##############################################
# Provide an account Id
# aws_account_id          = ""
env_name                = "liverpool-refactored-stg"
env_tag                 = "refactored-stg"
region                  = "us-east-2"
az_1                    = "us-east-2a"
az_2                    = "us-east-2b"
az_3                    = "us-east-2c"

##############################################
# Network
##############################################

network_address         = "10.210.0.0"
network_mask            = "/16"
destination_network     = "0.0.0.0/0"

##############################################
# Subnet Addresses and Names
##############################################

web_subnet1             = "10.210.1.0"
web_subnet2             = "10.210.2.0"
web_subnet3             = "10.210.3.0"
web_subnet1_name        = "web_s1"
web_subnet2_name        = "web_s2"
web_subnet3_name        = "web_s3"
web_subnet_mask         = "/24"
web_subnets_mask        = "/23"

app_subnet1             = "10.210.11.0"
app_subnet2             = "10.210.12.0"
app_subnet3             = "10.210.13.0"
app_subnet1_name        = "app_s1"
app_subnet2_name        = "app_s2"
app_subnet3_name        = "app_s3"
app_subnet_mask         = "/24"
app_subnets_mask        = "/23"

nat_subnet1             = "10.210.21.0"
nat_subnet2             = "10.210.22.0"
nat_subnet3             = "10.210.23.0"
nat_subnet1_name        = "nat_s1"
nat_subnet2_name        = "nat_s2"
nat_subnet3_name        = "nat_s3"
nat_subnet_mask         = "/24"
nat_subnets_mask        = "/23"

rds_subnet1             = "10.210.31.0"
rds_subnet2             = "10.210.32.0"
rds_subnet3             = "10.210.33.0"
rds_subnet1_name        = "rds_s1"
rds_subnet2_name        = "rds_s2"
rds_subnet3_name        = "rds_s3"
rds_subnet_mask         = "/24"
rds_subnets_mask        = "/23"

##############################################
# Application Properties
##############################################

web_name                = "web"
app_name                = "app"
app2_name               = "app2"
rds_name                = "mysql"