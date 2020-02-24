resource "aws_launch_configuration" "main" {
  associate_public_ip_address      = var.associate_public_ip_address
    ebs_optimized                    = var.ebs_optimized
    enable_monitoring                = var.enable_monitoring
    iam_instance_profile             = var.iam_instance_profile
    
    image_id                         = var.image_id
    instance_type                    = var.instance_type
    key_name                         = var.key_name
    name                             = var.name
    security_groups                  = [var.security_group_id]
    user_data                        = var.user_data

    ebs_block_device {
        delete_on_termination = var.delete_on_termination
        device_name           = var.device_name
        encrypted             = var.encrypted
        iops                  = var.iops
        no_device             = var.no_device
        volume_size           = var.volume_size
        volume_type           = var.volume_type
    }
}