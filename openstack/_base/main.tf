terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.35.0"
    }
  }
}

# Configure the OpenStack Provider
provider "openstack" {
  user_domain_name = "redhat.com"
  region           = "regionOne"
}

# Create a web server
resource "openstack_compute_instance_v2" "runner" {
  name      = var.name
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
  image_id  = var.image_id
  key_pair  = "gitlab"
  network {
    name = "provider_net_cci_11"
  }
}
