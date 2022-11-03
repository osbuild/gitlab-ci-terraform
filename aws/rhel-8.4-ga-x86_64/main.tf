module "aws" {
  source = "../_base"

  name             = "rhel-8.4-ga-x86_64"
  ami              = "ami-0ae9702360611e715"
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
