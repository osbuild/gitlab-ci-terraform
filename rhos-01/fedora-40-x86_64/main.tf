module "openstack" {
  source = "../_base"

  name      = "fedora-40"
  image_id  = "7c48753e-bac0-4526-aec2-07a1d3e8eaf3"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
