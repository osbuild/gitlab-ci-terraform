module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly-large"
  image_id  = "754d2603-a65c-4d8d-b5a5-94c735948e4d"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
