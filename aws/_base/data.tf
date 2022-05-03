##############################################################################
# Find both internal subnets
data "aws_subnet" "internalA" {
  filter {
    name   = "tag:Name"
    values = ["InternalA-ext"]
  }
}

data "aws_subnet" "internalB" {
  filter {
    name   = "tag:Name"
    values = ["InternalB-ext"]
  }
}

# Find the default VPC (not internal).
data "aws_vpc" "external_vpc" {
  default = true
}

# Find all of the subnet IDs from the default VPC.
data "aws_subnets" "external_subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.external_vpc.id]
  }
}

locals {
  internal_subnets = [data.aws_subnet.internalA.id, data.aws_subnet.internalB.id]
  external_subnets = data.aws_subnets.external_subnets.ids
}

##############################################################################
## Security groups
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

data "aws_iam_role" "spot_fleet_tagging_role" {
  name = "aws-ec2-spot-fleet-tagging-role"
}
