resource "aws_codebuild_project" "main" {
  name          = var.name
  description   = var.description
  build_timeout = var.build_timeout
  service_role  = var.service_role

  artifacts {
    type = var.artifacts_type
  }

  cache {
    type = var.cache_type
  }

  tags = {
    Environment = var.environment
    Env         = var.env_tag
  }

  environment {
    compute_type = var.compute_type
    image        = var.compute_image
    type         = var.compute_os

    dynamic "environment_variable" {
      for_each = [for v in var.environment_variables: {
        name  = v.name
        value = v.value
      }]

      content {
        name   = environment_variable.value.name
        value  = environment_variable.value.value
      }
    }

    privileged_mode = var.privileged_mode
  }

  source {
    type      = var.s3_type
    location  = var.s3_location
    buildspec = var.s3_buildspec
  }

}