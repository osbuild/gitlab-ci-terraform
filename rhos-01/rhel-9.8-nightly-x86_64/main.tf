module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly"
  image_id  = "b2a010c1-17c5-4da5-a221-0b328f448247"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
