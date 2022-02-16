module "aws" {
  source = "../_base"

  name             = "rhel-8.6-nightly-aarch64"
  ami              = "ami-084fa679de68f1912"
  instance_type    = "c6g.large"
  internal_network = var.internal_network
  internal_subnet  = var.internal_subnet
}

variable "internal_network" {
  type        = bool
  description = "Whether this instance should be in the internal network (default: false)."
  default     = false
}

output "ip_address" {
  value = module.aws.ip_address
}

variable "internal_subnet" {
  description = "Which internal subnet to use."
  type        = string
  default     = ""
}
