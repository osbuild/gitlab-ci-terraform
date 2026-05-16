module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga"
  image_id  = "e2874d47-d4c1-4522-bbf3-9070c69c9f5c"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
