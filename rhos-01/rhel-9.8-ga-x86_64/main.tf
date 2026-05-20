module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-ga"
  image_id  = "aac2c9d6-b2b1-4676-8f65-3cfdcb30306b"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
