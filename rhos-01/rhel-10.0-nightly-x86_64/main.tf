module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-nightly"
  image_id  = "2225720c-5c15-489a-9cd9-8ae96c45dc7d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
