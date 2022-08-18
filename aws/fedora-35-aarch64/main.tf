module "aws" {
  source = "../_base"

  name             = "fedora-35-aarch64"
  ami              = "ami-068c123e1c1ca0d49"
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
