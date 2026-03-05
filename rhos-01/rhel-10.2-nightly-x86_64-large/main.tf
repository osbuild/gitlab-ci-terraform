module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly-large"
  image_id  = "2e600a22-aa35-41b3-8e6a-86a66b612fee"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
