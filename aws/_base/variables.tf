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

variable "job_name" {
  description = "the job_name the instance is performing"
  type        = string
}

variable "project" {
  description = "the associated project"
  type        = string
}

variable "branch" {
  description = "the associated branch"
  type        = string
}

variable "pipeline_id" {
  description = "the associated pipeline_id"
  type        = string
}

variable "pipeline_source" {
  description = "the source that triggered the job"
  type        = string
}
