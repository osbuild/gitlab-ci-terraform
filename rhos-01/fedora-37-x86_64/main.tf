module "openstack" {
  source = "../_base"

  name      = "fedora-37"
  image_id  = "edeb1b44-b086-4e61-9648-a801cc098027"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
