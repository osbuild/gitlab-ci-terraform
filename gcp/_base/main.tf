terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.33.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}
provider "google" {
  project         = "cockpituous"
  region          = "us-east4"
  zone            = "us-east4-c"
  request_timeout = "5m"
}

resource "random_id" "instance_name" {
  byte_length = 28
}


resource "google_compute_instance" "runner" {
  name         = "runner-${random_id.instance_name.hex}"
  machine_type = var.machine_type

  boot_disk {
    initialize_params {
      image = var.image
      size  = 40
    }
  }
  network_interface {
    subnetwork         = "image-builder-san-us-east4"
    subnetwork_project = "network-infrastructure-333818"
  }
  # This is a network tag which specifies wheter access to internal network is allowed or not
  tags = [var.internal_network ? "net-is-internal" : "net-is-external"]

  labels = { gitlab-ci-runner = true }

  metadata = {
    ssh-keys = "cloud-user:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC1rXFFpEqw7J1M9qy3d+6+lYMNUv3Xpnm6zIwB22PPXiEenlGZB5XQwFMCAamuAilvyfF8fV1kXCqt+lCfX+6uCEJOT75EL90t+E+msDQxSGCuPl16NtzvgSY5mepFzm3jS1R3cruBZ8N7YtWlrYlHqgAQ9tJNkKwwtX/VqsMINWLo0fbeeUsJgSR6wKtzsawBFJe5iRP0IW/X2qN7Bq6HxhsbMXzopRkVRhRfI6iwjeysYjIyB3NHUZzeseyD5DUom6CMlbErnOjld1mRCM0U0htS0OmzOgNzE1O6bEubfxYIBb1/f9V3vVAM4TlYsxywc8yb0QQOQfeaEOApGWAt1snPy7mlLQWPPdq2+yR3hxSJUjN3/CEdN8rT8SMRqBus3wCgI48/IHrnRHscqZkhDGBNdAxxyLeQDij3D5I1KsMFL10k2nqwQ1PdDXI0o68FiXER3F6gWQ40LNP5C7n/CXyjubFKFpv5TMyi/QyBlYe/YmuaByKGzMbDPcudpYf5Lx2YB+ZSzpamfii4C9IBQmQ4rIqGZXNZNtL0Uw/ZfUFekYItp+CyJ6B8jXvIH+RVGYuVRIAJTtvOKqEqAnEnpwC5f1Mz6BeF3PJbu88TRyLp6gI9vb0PITA01whI1ioC4IypLkdYktzNk+XYTgjT66uel3XGlvr48xFY17NBqw== cloud-user"
  }

  scheduling {
    provisioning_model          = "SPOT"
    preemptible                 = "true"
    automatic_restart           = "false"
    instance_termination_action = "DELETE"
  }

  advanced_machine_features {
    enable_nested_virtualization = "true"
  }
}

data "google_compute_instance" "my_instance" {
  depends_on = [google_compute_instance.runner]
  name       = "runner-${random_id.instance_name.hex}"
}
