module "openstack" {
  source = "../_base"

  name      = "rhel-9-10-nightly"
  image_id  = "4b4fe2e0-67e4-4c8c-91e2-42413ac422ce"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
