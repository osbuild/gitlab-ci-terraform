terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.18.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_launch_template" "runner" {
  image_id = var.ami
  key_name = "gitlab-runner"

  dynamic "iam_instance_profile" {
    for_each = var.iam_instance_profile != null ? [var.iam_instance_profile] : []
    content {
      name = iam_instance_profile.value
    }
  }

  vpc_security_group_ids = [
    var.internal_network ? data.aws_security_group.internal_security_group.id : data.aws_security_group.external_security_group.id
  ]

  block_device_mappings {
    device_name = data.aws_ami.runner.root_device_name
    ebs {
      volume_size = 60
    }
  }

  tag_specifications {
    resource_type = "instance"
    tags = {
      Name            = "Schutzbot runner"
      Workload        = "CI Runner"
      Job_name        = var.job_name
      Project         = var.project
      Branch          = var.branch
      Pipeline_id     = var.pipeline_id
      Pipeline_source = var.pipeline_source
    }
  }
}

resource "aws_spot_fleet_request" "runner" {
  allocation_strategy = "priceCapacityOptimized"

  fleet_type                          = "request"
  iam_fleet_role                      = local.iam_fleet_role
  target_capacity                     = 1
  wait_for_fulfillment                = "true"
  terminate_instances_with_expiration = "true"
  valid_until                         = timeadd(timestamp(), "5h")

  launch_template_config {
    launch_template_specification {
      id      = aws_launch_template.runner.id
      version = aws_launch_template.runner.latest_version
    }

    dynamic "overrides" {
      for_each = setproduct(var.instance_types, var.internal_network ? local.internal_subnets : local.external_subnets)
      content {
        instance_type     = overrides.value[0]
        availability_zone = overrides.value[1].az
        subnet_id         = overrides.value[1].sn
      }
    }
  }
}

data "aws_instance" "runner" {
  depends_on = [aws_spot_fleet_request.runner]
  filter {
    name   = "tag:aws:ec2spot:fleet-request-id"
    values = [aws_spot_fleet_request.runner.id]
  }
}
