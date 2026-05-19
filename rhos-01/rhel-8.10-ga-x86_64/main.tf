module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga"
  image_id  = "e5795065-1e0e-44e4-8dc5-42917fd8f5b6"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
