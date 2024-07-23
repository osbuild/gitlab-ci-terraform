module "openstack" {
  source = "../_base"

  name      = "fedora-41"
  image_id  = "a6464ee9-90ad-43f9-8972-5abd1d5ff2dc"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
