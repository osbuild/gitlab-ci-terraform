module "openstack" {
  source = "../_base"

  name      = "fedora-43-large"
  image_id  = "71231ccb-eb92-4b7d-bc36-b8f37bdb8a72"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
