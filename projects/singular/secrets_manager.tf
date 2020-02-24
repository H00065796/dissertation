##############################################
# Secrets Manager
##############################################

module "mysql_master_database_password" {
  source        = "git::https://github.com/H00065796/dissertation//modules/random_id"
  byte_length   = 32
  keeper_id     = "${var.env_tag}/master"
}

module "mysql_master_secret_manager" {
  source            = "git::https://github.com/H00065796/dissertation//modules/secrets_manager"
  secrets_name      = "${var.env_tag}-${var.rds_name}/master"
  description       = "Master DB password"
}

module "mysql_master_secret_version" {
  source            = "git::https://github.com/H00065796/dissertation//modules/secret_version"
  secret_manager_id = module.mysql_master_secret_manager.id
  secrets_value     = module.mysql_master_database_password.hex
}