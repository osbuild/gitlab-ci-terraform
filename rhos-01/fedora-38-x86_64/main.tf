module "openstack" {
  source = "../_base"

  name      = "fedora-38"
  image_id  = "23cab973-29b7-44ea-8c89-0f2d648da17b" # Fedora-Cloud-Base-38-1.6
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
