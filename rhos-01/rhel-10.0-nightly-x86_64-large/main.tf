module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-nightly-large"
  image_id  = "77202c7a-1ab1-4d8d-87c0-566fc959803d"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
