module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-nightly"
  image_id  = "f59beb6f-bcb1-4a58-abf6-4aa6c8e888a4"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
