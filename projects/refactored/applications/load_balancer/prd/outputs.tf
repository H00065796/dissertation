##############################################
# Variable Outputs
##############################################

output "web_listener_protocol" { value = var.web_listener_protocol }
output "web_health_check_protocol" { value = var.web_health_check_protocol }
output "web_health_check_path" { value = var.web_health_check_path }
output "web_target_group_protocol" { value = var.web_target_group_protocol }
output "web_target_group1_port" { value = var.web_target_group1_port }
output "web_target_group2_port" { value = var.web_target_group2_port }
output "web_target_group1_prefix" { value = var.web_target_group1_prefix }
output "web_target_group2_prefix" { value = var.web_target_group2_prefix }

output "app_listener_protocol" { value = var.app_listener_protocol }
output "app_health_check_protocol" { value = var.app_health_check_protocol }
output "app_health_check_path" { value = var.app_health_check_path }
output "app_target_group_protocol" { value = var.app_target_group_protocol }
output "app_target_group1_port" { value = var.app_target_group1_port }
output "app_target_group2_port" { value = var.app_target_group2_port }
output "app_target_group1_prefix" { value = var.app_target_group1_prefix }
output "app_target_group2_prefix" { value = var.app_target_group2_prefix }

output "app2_listener_protocol" { value = var.app_listener_protocol }
output "app2_health_check_protocol" { value = var.app_health_check_protocol }
output "app2_health_check_path" { value = var.app_health_check_path }
output "app2_target_group_protocol" { value = var.app_target_group_protocol }
output "app2_target_group1_port" { value = var.app_target_group1_port }
output "app2_target_group2_port" { value = var.app_target_group2_port }
output "app2_target_group1_prefix" { value = var.app_target_group1_prefix }
output "app2_target_group2_prefix" { value = var.app_target_group2_prefix }

##############################################
# Outputs
##############################################

# Load Balancer - Web
output "web_load_balancer_id" { value = module.web_load_balancer.id }
output "web_load_balancer_arn" { value = module.web_load_balancer.arn }
output "web_load_balancer_dns_name" { value = module.web_load_balancer.dns_name }

# Load Balancer Target Group Blue - Web
output "web_target_group_blue_id" { value = module.web_target_group_blue.id }
output "web_target_group_blue_arn" { value = module.web_target_group_blue.arn }
output "web_target_group_blue_name" { value = module.web_target_group_blue.name }

# Load Balancer Target Group Green - Web
output "web_target_group_green_id" { value = module.web_target_group_green.id }
output "web_target_group_green_arn" { value = module.web_target_group_green.arn }
output "web_target_group_green_name" { value = module.web_target_group_green.name }

# Load Balancer Listener Blue - Web
output "web_load_balancer_listener_blue_id" { value = module.web_load_balancer_listener_blue.id }
output "web_load_balancer_listener_blue_arn" { value = module.web_load_balancer_listener_blue.arn }

# Load Balancer Listener Green - Web
output "web_load_balancer_listener_green_id" { value = module.web_load_balancer_listener_green.id }
output "web_load_balancer_listener_green_arn" { value = module.web_load_balancer_listener_green.arn }

##############################################

# Load Balancer - App
output "app_load_balancer_id" { value = module.app_load_balancer.id }
output "app_load_balancer_arn" { value = module.app_load_balancer.arn }
output "app_load_balancer_dns_name" { value = module.app_load_balancer.dns_name }

# Load Balancer Target Group Blue - App
output "app_target_group_blue_id" { value = module.app_target_group_blue.id }
output "app_target_group_blue_arn" { value = module.app_target_group_blue.arn }
output "app_target_group_blue_name" { value = module.app_target_group_blue.name }

# Load Balancer Target Group Green - App
output "app_target_group_green_id" { value = module.app_target_group_green.id }
output "app_target_group_green_arn" { value = module.app_target_group_green.arn }
output "app_target_group_green_name" { value = module.app_target_group_green.name }

# Load Balancer Listener Blue - App
output "app_load_balancer_listener_blue_id" { value = module.app_load_balancer_listener_blue.id }
output "app_load_balancer_listener_blue_arn" { value = module.app_load_balancer_listener_blue.arn }

# Load Balancer Listener Green - App
output "app_load_balancer_listener_green_id" { value = module.app_load_balancer_listener_green.id }
output "app_load_balancer_listener_green_arn" { value = module.app_load_balancer_listener_green.arn }

##############################################

# Load Balancer Target Group Blue - App 2
output "app2_target_group_blue_id" { value = module.app2_target_group_blue.id }
output "app2_target_group_blue_arn" { value = module.app2_target_group_blue.arn }
output "app2_target_group_blue_name" { value = module.app2_target_group_blue.name }

# Load Balancer Target Group Green - App 2
output "app2_target_group_green_id" { value = module.app2_target_group_green.id }
output "app2_target_group_green_arn" { value = module.app2_target_group_green.arn }
output "app2_target_group_green_name" { value = module.app2_target_group_green.name }

# Load Balancer Listener Blue - App 2
output "app2_load_balancer_listener_blue_id" { value = module.app2_load_balancer_listener_blue.id }
output "app2_load_balancer_listener_blue_arn" { value = module.app2_load_balancer_listener_blue.arn }

# Load Balancer Listener Green - App 2
output "app2_load_balancer_listener_green_id" { value = module.app2_load_balancer_listener_green.id }
output "app2_load_balancer_listener_green_arn" { value = module.app2_load_balancer_listener_green.arn }

##############################################

output "app_lb_security_group_id" { value = module.app_lb_security_group.id }
output "app_lb_security_group_arn" { value = module.app_lb_security_group.arn }

output "web_lb_security_group_id" { value = module.web_lb_security_group.id }
output "web_lb_security_group_arn" { value = module.web_lb_security_group.arn }