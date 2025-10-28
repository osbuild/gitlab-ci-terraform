data "aws_security_group" "internal_security_group" {
  filter {
    name = "tag:Name"
    values = [
      "gitlab_ci_runner_internal_staging"
    ]
  }
}

data "aws_security_group" "external_security_group" {
  filter {
    name = "tag:Name"
    values = [
      "gitlab_ci_runner_external_staging"
    ]
  }
}

# These values are very stable so let's not query the AWS API everytime to save some resources and just hard code
# them here.
locals {
  internal_subnets = [
    {
      "az"  = "us-east-1a"
      "sn" = "subnet-0f22a125bb08f9b1f"
    },
    {
      "az"  = "us-east-1b"
      "sn" = "subnet-03e28e3654aafc68c"
    }
  ]
  external_subnets = [
    {
      "az" = "us-east-1c"
      "sn" = "subnet-4920962f"
    },
    {
      "az" = "us-east-1d"
      "sn" = "subnet-8ba519aa"
    },
    {
      "az" = "us-east-1e"
      "sn" = "subnet-21fe3b10"
    },
    {
      "az" = "us-east-1a"
      "sn" = "subnet-9d4a0bd0"
    },
    {
      "az" = "us-east-1f"
      "sn" = "subnet-0c016a02"
    },
    {
      "az" = "us-east-1b"
      "sn" = "subnet-ddc07282"
    }
  ]
  iam_fleet_role   = "arn:aws:iam::933752197999:role/aws-ec2-spot-fleet-tagging-role"
}
