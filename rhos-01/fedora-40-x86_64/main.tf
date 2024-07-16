module "openstack" {
  source = "../_base"

  name      = "fedora-40"
  image_id  = "e22eb083-36e6-41f6-8a01-baf0a65e28ae"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
