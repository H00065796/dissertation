##############################################
# Get the latest ECS Optimized AMI
##############################################

data "aws_ami" "latest_ecs" {
  most_recent = true
  owners      = ["591542846629"] # AWS

  filter {
    name   = "name"
    values = ["amzn2-ami-ecs-hvm*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}