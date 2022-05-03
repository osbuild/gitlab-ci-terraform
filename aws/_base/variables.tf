variable "name" {
  description = "Name of the instance."
  type        = string
}

variable "ami" {
  description = "AMI to launched."
  type        = string
}

variable "instance_types" {
  description = "Instance types to be launched."
  type        = list(any)
}

variable "internal_network" {
  description = "Whether this instance should be in the internal network."
  type        = bool
}
