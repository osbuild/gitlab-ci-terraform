module "openstack" {
  source = "../_base"

  name      = "rhel-9-7-nightly"
  image_id  = "1bd39b73-1353-4e96-9079-0d55428db4d6"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
