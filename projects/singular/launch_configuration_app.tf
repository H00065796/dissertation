##############################################
# Launch Configuration - App
##############################################

module "app_launch_configuration_v1" {
  source                      = "git::https://github.com/H00065796/dissertation//modules/launch_configuration"
  name                        = "TF-LC-${var.env_name}-${var.app_name}-v1"
  associate_public_ip_address = false
  ebs_optimized               = false
  enable_monitoring           = true
  iam_instance_profile        = "arn:aws:iam::${var.aws_account_id}:instance-profile/${module.ec2_ecs_instance_iam_instance_profile.name}"
  image_id                    = data.aws_ami.latest_ecs.id
  instance_type               = "t3.micro"
  security_group_id           = module.app_security_group.id
  delete_on_termination       = true
  encrypted                   = false
  iops                        = "0"
  no_device                   = false
  volume_size                 = "10"
  volume_type                 = "gp2"
  user_data                   = <<EOF
    #!/bin/bash
    echo ECS_CLUSTER=${module.app_ecs_cluster.name} >> /etc/ecs/ecs.config;
EOF
}

module "app_launch_configuration_v2" {
  source                      = "git::https://github.com/H00065796/dissertation//modules/launch_configuration"
  name                        = "TF-LC-${var.env_name}-${var.app_name}-v2"
  associate_public_ip_address = false
  ebs_optimized               = false
  enable_monitoring           = true
  iam_instance_profile        = "arn:aws:iam::${var.aws_account_id}:instance-profile/${module.ec2_ecs_instance_iam_instance_profile.name}"
  image_id                    = data.aws_ami.latest_ecs.id
  instance_type               = "t3.micro"
  security_group_id           = module.app_security_group.id
  delete_on_termination       = true
  encrypted                   = false
  iops                        = "0"
  no_device                   = false
  volume_size                 = "10"
  volume_type                 = "gp2"
  user_data                   = <<EOF
    #!/bin/bash
    echo ECS_CLUSTER=${module.app_ecs_cluster.name} >> /etc/ecs/ecs.config;
EOF
}