module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly-large"
  image_id  = "6f2908c5-c400-4ed4-9101-b9e35859aff9"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
