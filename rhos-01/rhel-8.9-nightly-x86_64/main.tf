module "openstack" {
  source = "../_base"

  name      = "rhel-8-9-nightly"
  image_id  = "abfa0bc2-f34c-448a-963f-676a5ff3cae9"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
