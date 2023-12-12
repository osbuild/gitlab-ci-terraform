module "openstack" {
  source = "../_base"

  name      = "rhel-8-8-nightly-large"
  image_id  = "7ccf87ad-19a3-4b3d-889f-5a36e9c6d976"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
