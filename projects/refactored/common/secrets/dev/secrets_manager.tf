##############################################
# Secrets Manager
##############################################

module "mysql_master_secret_manager" {
  source            = "git::https://github.com/H00065796/dissertation//modules/secrets_manager"
  secrets_name      = "${data.terraform_remote_state.dev.outputs.env_tag}-${data.terraform_remote_state.dev.outputs.rds_name}/master"
  description       = "Master DB password"
}