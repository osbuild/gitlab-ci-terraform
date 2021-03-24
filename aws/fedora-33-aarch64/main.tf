module "aws" {
  source = "../_base"

  name             = "fedora-33-aarch64"
  ami              = "ami-07b7fa952a4ad5fd2"
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
