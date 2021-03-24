variable "name" {
  description = "Name of the instance."
  type        = string
}

variable "ami" {
  description = "AMI to launched."
  type        = string
}

variable "instance_type" {
  description = "Instance type to be launched."
  type        = string
}

variable "internal_network" {
  description = "Whether this instance should be in the internal network."
  type        = bool
}
