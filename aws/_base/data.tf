##############################################################################
## VPC
# Find the details for the internal VPC at AWS.
data "aws_vpc" "internal_vpc" {
  filter {
    name = "tag:Name"
    values = [
      "RD-Platform-Prod-US-East-1"
    ]
  }
}

# Find all of the subnet IDs from the internal VPC.
data "aws_subnet_ids" "internal_subnets" {
  vpc_id = data.aws_vpc.internal_vpc.id
}

# Find all of the subnet details from the internal VPC.
data "aws_subnet" "internal_subnet_primary" {
  id = sort(data.aws_subnet_ids.internal_subnets.ids)[0]
}

# Find the default VPC (not internal).
data "aws_vpc" "external_vpc" {
  default = true
}

# Find all of the subnet IDs from the default VPC.
data "aws_subnet_ids" "external_subnets" {
  vpc_id = data.aws_vpc.external_vpc.id
}

# Find all of the subnet details from the external VPC.
data "aws_subnet" "external_subnet_primary" {
  id = sort(data.aws_subnet_ids.external_subnets.ids)[0]
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
