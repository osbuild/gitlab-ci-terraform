module "openstack" {
  source = "../_base"

  name      = "fedora-42"
  image_id  = "a9b8d47a-fadf-4466-aef0-8db851220534"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
