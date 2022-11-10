module "aws" {
  source = "../_base"

  name             = "rhel-8.5-ga-x86_64"
  ami              = "ami-06f1e6f8b3457ae7c"
  instance_types   = ["m5d.large", "c5ad.large", "m5ad.large", "c5.large", "c6id.large"]
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
