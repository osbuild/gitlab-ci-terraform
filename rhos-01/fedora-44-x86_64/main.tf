module "openstack" {
  source = "../_base"

  name      = "fedora-44"
  image_id  = "622caa9c-ec65-47bd-8588-da5b65396701"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
