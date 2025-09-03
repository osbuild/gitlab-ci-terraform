module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly"
  image_id  = "754d2603-a65c-4d8d-b5a5-94c735948e4d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
