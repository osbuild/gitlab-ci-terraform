module "aws" {
  source = "../_base"

  name = "fedora-35-x86_64"
  ami  = "ami-08b4ee602f76bff79"

  # Fedora 35 AMI doesn't boot on c6i.large, let's use only AMD
  # See: https://pagure.io/cloud-sig/issue/359
  # TODO for Fedora 36: add c6i.large for more options
  instance_types       = ["m5d.large", "c5ad.large", "m5ad.large", "c5.large"]
  internal_network     = var.internal_network
  job_name             = var.job_name
  project              = var.project
  branch               = var.branch
  pipeline_id          = var.pipeline_id
  pipeline_source      = var.pipeline_source
  iam_instance_profile = var.iam_instance_profile
}

variable "internal_network" {
  type        = bool
  description = "Whether this instance should be in the internal network (default: false)."
  default     = false
}

output "ip_address" {
  value = module.aws.ip_address
}

variable "job_name" {
  description = "the job_name the instance is performing"
  type        = string
  default     = "unset"
}

variable "project" {
  description = "the associated project"
  type        = string
  default     = "unset"
}

variable "branch" {
  description = "the associated branch"
  type        = string
  default     = "unset"
}

variable "pipeline_id" {
  description = "the associated pipeline_id"
  type        = string
  default     = "unset"
}

variable "pipeline_source" {
  description = "the source that trigger the job"
  type        = string
  default     = "unset"
}

variable "iam_instance_profile" {
  description = "instance profile to attach to the runner, the profile must exist"
  type        = string
  default     = null
}
