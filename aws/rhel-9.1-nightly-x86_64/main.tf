module "aws" {
  source = "../_base"

  name             = "rhel-9.1-nightly-x86_64"
  ami              = "ami-044006978614b7d8d"
  instance_types   = ["c6i.large", "c6a.large", "c5.large", "c5a.large"]
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
