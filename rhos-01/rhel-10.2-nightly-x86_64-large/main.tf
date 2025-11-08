module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly-large"
  image_id  = "0ca6e354-f4b6-4aa3-bbaf-6d4e93603697"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
