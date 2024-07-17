module "openstack" {
  source = "../_base"

  name      = "fedora-40"
  image_id  = "d60860fe-1596-4481-a36f-bfaeb536b8c7"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
