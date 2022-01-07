module "aws" {
  source = "../_base"

  name = "fedora-35-x86_64"
  ami  = "ami-08b4ee602f76bff79"

  # Fedora 35 AMI doesn't boot on c6i.large, let's use an older type
  # See: https://pagure.io/cloud-sig/issue/359
  # TODO for Fedora 36: update this to c6i.large for more performance
  instance_type    = "c5a.large"
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
