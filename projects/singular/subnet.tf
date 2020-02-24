##############################################
# Web Servers
##############################################

module "web_subnet1" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.web_subnet1
  subnet_mask         = var.web_subnet_mask
  subnet_name         = var.web_subnet1_name
  availability_zone   = var.az_1  
  env_tag             = var.env_tag
}

module "web_subnet2" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.web_subnet2
  subnet_mask         = var.web_subnet_mask
  subnet_name         = var.web_subnet2_name
  availability_zone   = var.az_2  
  env_tag             = var.env_tag
}

module "web_subnet3" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.web_subnet3
  subnet_mask         = var.web_subnet_mask
  subnet_name         = var.web_subnet3_name
  availability_zone   = var.az_3
  env_tag             = var.env_tag
}

##############################################
# Application Servers
##############################################

module "app_subnet1" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.app_subnet1
  subnet_mask         = var.app_subnet_mask
  subnet_name         = var.app_subnet1_name
  availability_zone   = var.az_1  
  env_tag             = var.env_tag
}

module "app_subnet2" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.app_subnet2
  subnet_mask         = var.app_subnet_mask
  subnet_name         = var.app_subnet2_name
  availability_zone   = var.az_2  
  env_tag             = var.env_tag
}

module "app_subnet3" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.app_subnet3
  subnet_mask         = var.app_subnet_mask
  subnet_name         = var.app_subnet3_name
  availability_zone   = var.az_3
  env_tag             = var.env_tag
}

##############################################
# NAT Servers
##############################################

module "nat_subnet1" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.nat_subnet1
  subnet_mask         = var.nat_subnet_mask
  subnet_name         = var.nat_subnet1_name
  availability_zone   = var.az_1  
  env_tag             = var.env_tag
}

module "nat_subnet2" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.nat_subnet2
  subnet_mask         = var.nat_subnet_mask
  subnet_name         = var.nat_subnet2_name
  availability_zone   = var.az_2  
  env_tag             = var.env_tag
}

module "nat_subnet3" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.nat_subnet3
  subnet_mask         = var.nat_subnet_mask
  subnet_name         = var.nat_subnet3_name
  availability_zone   = var.az_3
  env_tag             = var.env_tag
}

##############################################
# Database
##############################################

module "rds_subnet1" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.rds_subnet1
  subnet_mask         = var.rds_subnet_mask
  subnet_name         = var.rds_subnet1_name
  availability_zone   = var.az_1  
  env_tag             = var.env_tag
}

module "rds_subnet2" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.rds_subnet2
  subnet_mask         = var.rds_subnet_mask
  subnet_name         = var.rds_subnet2_name
  availability_zone   = var.az_2  
  env_tag             = var.env_tag
}

module "rds_subnet3" {
  source              = "git::https://github.com/H00065796/dissertation//modules/subnet"
  vpc_id              = module.vpc_main.id
  subnet              = var.rds_subnet3
  subnet_mask         = var.rds_subnet_mask
  subnet_name         = var.rds_subnet3_name
  availability_zone   = var.az_3
  env_tag             = var.env_tag
}