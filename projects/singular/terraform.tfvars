##############################################
# Account and Attributes
##############################################
# Provide an account Id
# aws_account_id          = ""
env_name                = "liverpool-singular"
env_tag                 = "singular"
region                  = "us-east-2"
az_1                    = "us-east-2a"
az_2                    = "us-east-2b"
az_3                    = "us-east-2c"

##############################################
# Network
##############################################

network_address         = "10.0.0.0"
network_mask            = "/16"
destination_network     = "0.0.0.0/0"

##############################################
# Subnet Addresses and Names
##############################################

web_subnet1             = "10.0.1.0"
web_subnet2             = "10.0.2.0"
web_subnet3             = "10.0.3.0"
web_subnet1_name        = "web_s1"
web_subnet2_name        = "web_s2"
web_subnet3_name        = "web_s3"
web_subnet_mask         = "/24"
web_subnets_mask        = "/23"

app_subnet1             = "10.0.11.0"
app_subnet2             = "10.0.12.0"
app_subnet3             = "10.0.13.0"
app_subnet1_name        = "app_s1"
app_subnet2_name        = "app_s2"
app_subnet3_name        = "app_s3"
app_subnet_mask         = "/24"
app_subnets_mask        = "/23"

nat_subnet1             = "10.0.21.0"
nat_subnet2             = "10.0.22.0"
nat_subnet3             = "10.0.23.0"
nat_subnet1_name        = "nat_s1"
nat_subnet2_name        = "nat_s2"
nat_subnet3_name        = "nat_s3"
nat_subnet_mask         = "/24"
nat_subnets_mask        = "/23"

rds_subnet1             = "10.0.31.0"
rds_subnet2             = "10.0.32.0"
rds_subnet3             = "10.0.33.0"
rds_subnet1_name        = "rds_s1"
rds_subnet2_name        = "rds_s2"
rds_subnet3_name        = "rds_s3"
rds_subnet_mask         = "/24"
rds_subnets_mask        = "/23"

##############################################
# Application Properties
##############################################

web_name                    = "web"
web_listener_protocol       = "HTTP"
web_health_check_protocol   = "HTTP"
web_health_check_path       = "/"
web_target_group_protocol   = "HTTP"
web_target_group1_port      = 80
web_target_group2_port      = 8080
web_target_group1_prefix    = "webblu"
web_target_group2_prefix    = "webgre"

app_name                    = "app"
app_listener_protocol       = "HTTP"
app_health_check_protocol   = "HTTP"
app_health_check_path       = "/"
app_target_group_protocol   = "HTTP"
app_target_group1_port      = 9000
app_target_group2_port      = 9080
app_target_group1_prefix    = "appblu"
app_target_group2_prefix    = "appgre"

app2_name                    = "app2"
app2_listener_protocol       = "HTTP"
app2_health_check_protocol   = "HTTP"
app2_health_check_path       = "/"
app2_target_group_protocol   = "HTTP"
app2_target_group1_port      = 9100
app2_target_group2_port      = 9180
app2_target_group1_prefix    = "app2bl"
app2_target_group2_prefix    = "app2gr"

rds_name                    = "mysql"