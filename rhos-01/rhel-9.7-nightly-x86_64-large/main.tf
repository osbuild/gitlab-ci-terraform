module "openstack" {
  source = "../_base"

  name      = "rhel-9-7-nightly-large"
  image_id  = "1bd39b73-1353-4e96-9079-0d55428db4d6"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
