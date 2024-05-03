module "openstack" {
  source = "../_base"

  name      = "rhel-9-5-nightly"
  image_id  = "78aadf2c-65a2-44b4-a4f6-fe8689aef246"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
