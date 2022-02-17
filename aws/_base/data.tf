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

# Find all of the subnets from the internal VPC.
data "aws_subnet" "internal_subnets" {
  for_each = data.aws_subnet_ids.internal_subnets.ids
  id       = each.value
}

locals {
  // convert to array so we can index this
  // data.aws_subnet.internal_subnets is actually a map of subnets indexed by their IDs
  internal_subnets = values(data.aws_subnet.internal_subnets)
}

# Find the primary subnet (aka the one that has the most available IP addresses)
data "aws_subnet" "internal_subnet_primary" {
  id = local.internal_subnets[0].available_ip_address_count > local.internal_subnets[1].available_ip_address_count ? local.internal_subnets[0].id : local.internal_subnets[1].id
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
