module "aws" {
  source = "../_base"

  name             = "fedora-36-aarch64"
  ami              = "ami-01925eb0821988986"
  instance_types   = ["c7g.large"]
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
