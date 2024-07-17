module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-nightly-large"
  image_id  = "2225720c-5c15-489a-9cd9-8ae96c45dc7d"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
