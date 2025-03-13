module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-nightly"
  image_id  = "18ccce5d-c195-45c3-96cb-a7e120b7b6f1"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
