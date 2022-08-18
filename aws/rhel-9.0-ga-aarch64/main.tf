module "aws" {
  source = "../_base"

  name             = "rhel-9.0-ga-aarch64"
  ami              = "ami-08ddbe20d7e0d2f8f"
  instance_types   = ["c7g.large", "c6g.large"]
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
