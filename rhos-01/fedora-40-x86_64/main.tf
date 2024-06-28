module "openstack" {
  source = "../_base"

  name      = "fedora-40"
  image_id  = "c92041c2-24af-481a-9637-a7821fddc7d8"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
