module "openstack" {
  source = "../_base"

  name      = "fedora-44"
  image_id  = "3d0ea97e-e23a-45fb-bac7-8e2904ff64b6"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
