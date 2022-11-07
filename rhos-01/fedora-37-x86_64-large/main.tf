module "openstack" {
  source = "../_base"

  name      = "fedora-37"
  image_id  = "edeb1b44-b086-4e61-9648-a801cc098027"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
