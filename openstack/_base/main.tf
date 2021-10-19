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
  flavor_id = var.flavor_id
  image_id  = var.image_id
  key_pair  = "gitlab"
  network {
    name = "shared_net_2"
  }
}
