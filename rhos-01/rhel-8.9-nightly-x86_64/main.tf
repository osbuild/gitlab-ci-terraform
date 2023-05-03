module "openstack" {
  source = "../_base"

  name      = "rhel-8-9-nightly"
  image_id  = "2c3ac9ca-cda6-4d76-be00-8b2657fc7c24"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
