module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-nightly"
  image_id  = "789c384d-4935-4c7e-8a24-a80a718f85b1"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
