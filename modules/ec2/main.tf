resource "aws_instance" "ec2_instance" {
  ami                         = var.ami_image_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.eip_flag
  vpc_security_group_ids      = [var.vpc_security_group_id]

  instance_initiated_shutdown_behavior = var.shutdown_behavior
  disable_api_termination              = var.disable_termination

  credit_specification {
    cpu_credits = var.cpu_credits
  }

  iam_instance_profile = var.iam_instance_profile
  key_name = var.key_name

  tags = {
    Name = var.server_name
    Env = var.env_tag

  }

  user_data = var.user_data
}