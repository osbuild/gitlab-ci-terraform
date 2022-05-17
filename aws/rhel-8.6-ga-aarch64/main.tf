module "aws" {
  source = "../_base"

  name             = "rhel-8.6-ga-aarch64"
  ami              = "ami-0c84d76d81209a0e2"
  instance_types   = ["c7g.large"]
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
