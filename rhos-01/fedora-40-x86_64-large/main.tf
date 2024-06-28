module "openstack" {
  source = "../_base"

  name      = "fedora-40"
  image_id  = "c92041c2-24af-481a-9637-a7821fddc7d8"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
