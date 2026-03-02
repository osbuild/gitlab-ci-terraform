module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly"
  image_id  = "96dc6866-2a01-4015-806c-37359e534e3f"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
