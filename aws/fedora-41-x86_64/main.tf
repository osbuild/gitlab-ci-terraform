module "aws" {
  source = "../_base"

  name                 = "fedora-41-x86_64"
  ami                  = "ami-076cc82b468929221"
  instance_types       = ["m5.large", "m5d.large", "m5a.large", "m5ad.large", "m6a.large", "m6i.large", "m6id.large", "m7i.large", "m7a.large", "m7i-flex.large", "m8a.large", "m8i.large", "m8i-flex.large"]
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
