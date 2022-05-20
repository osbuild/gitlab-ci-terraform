module "aws" {
  source = "../_base"

  name             = "rhel-8.7-nightly-x86_64"
  ami              = "ami-026e887955ee06a23"
  instance_types   = ["c6i.large", "c6a.large"]
  internal_network = var.internal_network
}

variable "internal_network" {
  type        = bool
  description = "Whether this instance should be in the internal network (default: false)."
  default     = false
}

output "ip_address" {
  value = module.aws.ip_address
}