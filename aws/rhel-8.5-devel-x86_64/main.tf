module "aws" {
  source = "../_base"

  name             = "rhel-8.5-devel-x86_64"
  ami              = "ami-0c14d21e741b97c48"
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
