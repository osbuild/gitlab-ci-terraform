module "openstack" {
  source = "../_base"

  name      = "rhel-9-9-nightly"
  image_id  = "b71263c8-e240-4731-94c7-40bd675f038a"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
