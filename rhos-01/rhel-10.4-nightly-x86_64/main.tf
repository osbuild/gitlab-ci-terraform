module "openstack" {
  source = "../_base"

  name      = "rhel-10-4-nightly"
  image_id  = "5e38fc50-d072-4bea-afb0-9e29873f3c2b"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
