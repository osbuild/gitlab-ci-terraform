module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly"
  image_id  = "ffdb57cf-d498-463f-a198-8067e7018c40"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
