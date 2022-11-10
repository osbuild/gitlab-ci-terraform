module "aws" {
  source = "../_base"

  name = "fedora-35-x86_64"
  ami  = "ami-08b4ee602f76bff79"

  # Fedora 35 AMI doesn't boot on c6i.large, let's use only AMD
  # See: https://pagure.io/cloud-sig/issue/359
  # TODO for Fedora 36: add c6i.large for more options
  instance_types   = ["m5d.large", "c5ad.large", "m5ad.large", "c5.large"]
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
