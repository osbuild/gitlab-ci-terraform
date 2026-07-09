module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly-large"
  image_id  = "e9cdc93d-88c2-4a26-a4a1-6236bd16e277"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
