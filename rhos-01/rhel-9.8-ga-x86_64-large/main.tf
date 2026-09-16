module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-ga-large"
  image_id  = "ddad89da-ea1c-4730-a1b8-bd105b2c1b26"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
