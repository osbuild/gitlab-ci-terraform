module "openstack" {
  source = "../_base"

  name      = "rhel-9-9-nightly-large"
  image_id  = "961e942a-ec79-411f-96c9-3a7ffbd6d8d0"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
