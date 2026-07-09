module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly"
  image_id  = "e9cdc93d-88c2-4a26-a4a1-6236bd16e277"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
