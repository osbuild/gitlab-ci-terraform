terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.72.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_spot_fleet_request" "runner" {
  allocation_strategy = "lowestPrice"

  fleet_type                          = "request"
  iam_fleet_role                      = local.iam_fleet_role
  target_capacity                     = 1
  wait_for_fulfillment                = "true"
  terminate_instances_with_expiration = "true"
  valid_until                         = timeadd(timestamp(), "5h")

  dynamic "launch_specification" {
    for_each = setproduct(var.instance_types, var.internal_network ? local.internal_subnets : local.external_subnets)
    content {
      ami           = var.ami
      subnet_id     = launch_specification.value[1]
      key_name      = "gitlab-runner"
      instance_type = launch_specification.value[0]

      vpc_security_group_ids = [
        var.internal_network ? data.aws_security_group.internal_security_group.id : data.aws_security_group.external_security_group.id
      ]

      root_block_device {
        volume_size = 40
      }

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
}

data "aws_instance" "runner" {
  depends_on = [aws_spot_fleet_request.runner]
  filter {
    name   = "tag:aws:ec2spot:fleet-request-id"
    values = [aws_spot_fleet_request.runner.id]
  }
}
