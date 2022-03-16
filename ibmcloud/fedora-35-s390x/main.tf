terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = "~> 1.12.0"
    }
  }
}

# Configure the IBM Provider
provider "ibm" {
  region = "eu-gb"
}

data "ibm_is_vpc" "eu-gb" {
  name = "eu-gb-default-vpc"
}

data "ibm_is_image" "fedora35" {
  name = "fedora-cloud-base-35-s390x"
}

data "ibm_is_subnet" "eu-gb-2" {
  name = "eu-gb-2-default-subnet"
}

data "ibm_is_ssh_key" "schutzbot" {
  name = "schutzbot"
}

resource "ibm_is_floating_ip" "ip" {
  name   = "schutzbot"
  target = ibm_is_instance.vm.primary_network_interface[0].id
}

resource "ibm_is_instance" "vm" {
  name    = "schutzbot"
  image   = data.ibm_is_image.fedora35.id
  profile = "bz2-1x4"

  primary_network_interface {
    subnet = data.ibm_is_subnet.eu-gb-2.id
  }

  vpc  = data.ibm_is_vpc.eu-gb.id
  zone = "eu-gb-2"
  keys = [data.ibm_is_ssh_key.schutzbot.id]
}

output "ip_address" {
  value = [ibm_is_floating_ip.ip.address]
}
