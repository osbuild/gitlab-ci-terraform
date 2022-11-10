module "aws" {
  source = "../_base"

  name             = "rhel-8.8-nightly-aarch64"
  ami              = "ami-028ae4e81828fd7a9"
  instance_types   = ["c7g.large", "c6gd.large", "m6gd.large"]
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
