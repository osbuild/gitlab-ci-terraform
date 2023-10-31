module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-nightly-large"
  image_id  = "f59beb6f-bcb1-4a58-abf6-4aa6c8e888a4"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
