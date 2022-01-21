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

resource "aws_spot_instance_request" "runner" {
  ami                  = var.ami
  instance_type        = var.instance_type
  key_name             = "gitlab-runner"
  wait_for_fulfillment = true
  spot_type            = "one-time"

  subnet_id = var.internal_network ? data.aws_subnet.internal_subnet_primary.id : data.aws_subnet.external_subnet_primary.id

  vpc_security_group_ids = [
    var.internal_network ? data.aws_security_group.internal_security_group.id : data.aws_security_group.external_security_group.id
  ]

  tags = {
    Name = var.name
  }
  root_block_device {
    volume_size = 40
  }
}
