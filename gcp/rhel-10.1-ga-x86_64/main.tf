module "google" {
  source           = "../_base"
  image            = "ci-rhel-10-refresh-19-01-2026"
  machine_type     = "n2-standard-4"
  internal_network = var.internal_network
}

output "ip_address" {
  value = module.google.ip_address
}

variable "internal_network" {
  type        = bool
  description = "Whether this instance should be in the internal network (default: false)."
  default     = false
}
