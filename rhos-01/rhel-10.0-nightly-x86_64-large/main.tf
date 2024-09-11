module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-nightly-large"
  image_id  = "13725d82-7347-40d4-9d9a-01c0f0e49dbe"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
