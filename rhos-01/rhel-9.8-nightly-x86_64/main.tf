module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly"
  image_id  = "42560d91-235c-43ae-9484-90a63402e8c0"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
