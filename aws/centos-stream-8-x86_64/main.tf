module "aws" {
  source = "../_base"

  name             = "centos-stream-8-x86_64"
  ami              = "ami-059f1cc52e6c85908"
  instance_types   = ["c6i.large", "c6a.large", "c5.large", "c5a.large"]
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
