module "aws" {
  source = "../_base"

  name             = "rhel-8.5-ga-aarch64"
  ami              = "ami-06bbacb93891d7356"
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
