module "openstack" {
  source = "../_base"

  name      = "fedora-41"
  image_id  = "a6464ee9-90ad-43f9-8972-5abd1d5ff2dc"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
