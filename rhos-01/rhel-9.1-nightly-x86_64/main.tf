module "openstack" {
  source = "../_base"

  name      = "rhel-9-1-nightly"
  image_id  = "ea4d8610-5125-4f07-aba0-4bf8bd7c9622"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
