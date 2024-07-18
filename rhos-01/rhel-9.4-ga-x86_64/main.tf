module "openstack" {
  source = "../_base"

  name      = "rhel-9-4-ga"
  image_id  = "c0004ac0-31dd-423f-882a-6ae7bb1dcd67"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
