module "aws" {
  source = "../_base"

  name             = "fedora-32-x86_64"
  ami              = "ami-09f17ac4a76fd9ffe"
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
