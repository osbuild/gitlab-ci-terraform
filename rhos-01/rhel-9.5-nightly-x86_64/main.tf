module "openstack" {
  source = "../_base"

  name      = "rhel-9-5-nightly"
  image_id  = "eace9fc9-a5c1-4350-8906-43f9191b77b9"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
