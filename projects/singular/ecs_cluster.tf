##############################################
# ECS Cluster
##############################################

module "web_ecs_cluster" {
  source   = "git::https://github.com/H00065796/dissertation//modules/ecs_cluster"
  env_name = var.env_name
  app_name = var.web_name
  env_tag  = var.env_tag
}

module "app_ecs_cluster" {
  source   = "git::https://github.com/H00065796/dissertation//modules/ecs_cluster"
  env_name = var.env_name
  app_name = var.app_name
  env_tag  = var.env_tag
}