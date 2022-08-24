variable "image" {
  description = "Image to use"
  type        = string
}

variable "machine_type" {
  description = "Machine type to use"
  type        = string
}

variable "internal_network" {
  description = "Whether this instance should be in the internal network."
  type        = bool
}
