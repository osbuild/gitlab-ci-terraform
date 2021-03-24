module "aws" {
  source = "../_base"

  name             = "centos-stream-8-aarch64"
  ami              = "ami-0a311be1169cd6581"
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
