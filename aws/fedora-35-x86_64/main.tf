module "aws" {
  source = "../_base"

  name             = "fedora-35-x86_64"
  ami              = "ami-08b4ee602f76bff79"
  instance_type    = "c6i.large"
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
