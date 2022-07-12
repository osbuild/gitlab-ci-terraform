module "openstack" {
  source = "../_base"

  name      = "fedora-35"
  image_id  = "d62a2182-947b-421e-b3db-9b55b4dda522"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
