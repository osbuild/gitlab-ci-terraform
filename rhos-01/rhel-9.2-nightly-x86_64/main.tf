module "openstack" {
  source = "../_base"

  name      = "rhel-9-2-nightly"
  image_id  = "448b5e01-a513-45f2-97d7-00793e131e7d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
