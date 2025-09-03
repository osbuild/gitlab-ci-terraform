module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly-large"
  image_id  = "789c384d-4935-4c7e-8a24-a80a718f85b1"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
