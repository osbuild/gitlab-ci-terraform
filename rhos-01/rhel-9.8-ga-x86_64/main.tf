module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-ga"
  image_id  = "ddad89da-ea1c-4730-a1b8-bd105b2c1b26"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
