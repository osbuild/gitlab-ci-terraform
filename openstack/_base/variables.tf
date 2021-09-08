variable "name" {
  description = "Name of the instance."
  type        = string
}

variable "image_id" {
  description = "ID of an image to launch."
  type        = string
}

variable "flavor_id" {
  description = "ID of the machine flavor to use."
  type        = string
}
