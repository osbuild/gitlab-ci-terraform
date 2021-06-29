module "aws" {
  source = "../_base"

  name             = "rhel-9.0-beta-nightly-x86_64"
  ami              = "ami-059cb6322aa611bcd"
  instance_type    = "c5.large"
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
