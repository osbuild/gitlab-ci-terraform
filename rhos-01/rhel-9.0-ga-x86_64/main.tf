module "openstack" {
  source = "../_base"

  name      = "rhel-9-0-ga"
  image_id  = "debe655a-cc93-4f42-9d1e-23b81b2d08c4"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
