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

# Find the primary internal subnet (aka the one that has the most available IP addresses)
data "aws_subnet" "internal_subnet_primary" {
  id = data.aws_subnet.internalA.available_ip_address_count > data.aws_subnet.internalB.available_ip_address_count ? data.aws_subnet.internalA.id : data.aws_subnet.internalB.id
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
