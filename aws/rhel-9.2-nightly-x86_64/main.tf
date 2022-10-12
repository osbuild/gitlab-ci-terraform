module "aws" {
  source = "../_base"

  name             = "rhel-9.2-nightly-x86_64"
  ami              = "ami-0b8c9fa46efa586f8"
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
