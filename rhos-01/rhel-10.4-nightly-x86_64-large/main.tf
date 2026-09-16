module "openstack" {
  source = "../_base"

  name      = "rhel-10-4-nightly-large"
  image_id  = "5e38fc50-d072-4bea-afb0-9e29873f3c2b"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
