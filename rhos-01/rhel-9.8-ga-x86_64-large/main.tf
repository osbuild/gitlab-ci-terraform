module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-ga-large"
  image_id  = "aac2c9d6-b2b1-4676-8f65-3cfdcb30306b"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
