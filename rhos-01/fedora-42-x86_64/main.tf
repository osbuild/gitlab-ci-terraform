module "openstack" {
  source = "../_base"

  name      = "fedora-42"
  image_id  = "492090d7-8a3d-4e39-af0d-6bc35c646dcd"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
