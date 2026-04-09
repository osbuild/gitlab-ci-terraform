module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly"
  image_id  = "6f2908c5-c400-4ed4-9101-b9e35859aff9"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
