module "openstack" {
  source = "../_base"

  name      = "rhel-9-4-ga-large"
  image_id  = "c0004ac0-31dd-423f-882a-6ae7bb1dcd67"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
