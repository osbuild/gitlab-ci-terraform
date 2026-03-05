module "openstack" {
  source = "../_base"

  name      = "fedora-43-large"
  image_id  = "f2306798-10bd-489e-bbb6-f1599f7349c5"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
