module "aws" {
  source = "../_base"

  name             = "rhel-9.0-beta-nightly-aarch64"
  ami              = "ami-0631edaf7d852523b"
  instance_type    = "c6g.large"
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
