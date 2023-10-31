module "openstack" {
  source = "../_base"

  name      = "rhel-9-4-nightly"
  image_id  = "5879bd0c-ebeb-45da-b3d9-fa63dd5fe831"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
