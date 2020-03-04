##############################################
# Application Properties
##############################################

web_listener_protocol       = "HTTP"
web_health_check_protocol   = "HTTP"
web_health_check_path       = "/"
web_target_group_protocol   = "HTTP"
web_target_group1_port      = "80"
web_target_group2_port      = "8080"
web_target_group1_prefix    = "webtg1"
web_target_group2_prefix    = "webtg2"

app_listener_protocol       = "HTTP"
app_health_check_protocol   = "HTTP"
app_health_check_path       = "/"
app_target_group_protocol   = "HTTP"
app_target_group1_port      = "9000"
app_target_group2_port      = "9080"
app_target_group1_prefix    = "apptg1"
app_target_group2_prefix    = "apptg2"

app2_listener_protocol       = "HTTP"
app2_health_check_protocol   = "HTTP"
app2_health_check_path       = "/"
app2_target_group_protocol   = "HTTP"
app2_target_group1_port      = "9100"
app2_target_group2_port      = "9180"
app2_target_group1_prefix    = "app22b"
app2_target_group2_prefix    = "app22g"