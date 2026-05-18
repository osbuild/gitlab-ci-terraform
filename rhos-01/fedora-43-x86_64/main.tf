module "openstack" {
  source = "../_base"

  name      = "fedora-43"
  image_id  = "71231ccb-eb92-4b7d-bc36-b8f37bdb8a72"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
