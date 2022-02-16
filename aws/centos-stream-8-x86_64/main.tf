module "aws" {
  source = "../_base"

  name             = "centos-stream-8-x86_64"
  ami              = "ami-059f1cc52e6c85908"
  instance_type    = "c6i.large"
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
