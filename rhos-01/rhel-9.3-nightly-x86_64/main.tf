module "openstack" {
  source = "../_base"

  name      = "rhel-9-3-nightly"
  image_id  = "34104e4d-a1bb-4791-887c-1ecb8d47cc89"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
