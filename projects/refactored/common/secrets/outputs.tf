##############################################
# Secrets Manager
##############################################

output "mysql_master_secret_manager_id" { value = module.mysql_master_secret_manager.id }
output "mysql_master_secret_manager_arn" { value = module.mysql_master_secret_manager.arn }

##############################################
# Secrets Version
##############################################

output "mysql_master_secret_version_id" { value = module.mysql_master_secret_version.id }
output "mysql_master_secret_version_arn" { value = module.mysql_master_secret_version.arn }
output "mysql_master_secret_version_version_id" { value = module.mysql_master_secret_version.version_id }