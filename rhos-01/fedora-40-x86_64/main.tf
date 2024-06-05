module "openstack" {
  source = "../_base"

  name      = "fedora-40"
  image_id  = "bf65928c-ce7a-426c-86b9-c5ca0b63ca9d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
