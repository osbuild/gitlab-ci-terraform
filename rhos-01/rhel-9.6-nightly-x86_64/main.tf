module "openstack" {
  source = "../_base"

  name      = "rhel-9-6-nightly"
  image_id  = "d3ae893b-be51-4cf8-98a7-ef379248e1b4"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
