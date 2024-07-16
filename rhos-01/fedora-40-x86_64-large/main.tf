module "openstack" {
  source = "../_base"

  name      = "fedora-40"
  image_id  = "e22eb083-36e6-41f6-8a01-baf0a65e28ae"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
