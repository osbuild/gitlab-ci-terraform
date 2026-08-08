module "openstack" {
  source = "../_base"

  name      = "rhel-9-9-nightly-large"
  image_id  = "b71263c8-e240-4731-94c7-40bd675f038a"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
