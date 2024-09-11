module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-nightly"
  image_id  = "13725d82-7347-40d4-9d9a-01c0f0e49dbe"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
