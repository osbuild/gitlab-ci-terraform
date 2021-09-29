module "aws" {
  source = "../_base"

  name             = "rhel-8.6-nightly-aarch64"
  ami              = "ami-07a7b2743746ddf9c"
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
