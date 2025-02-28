module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-nightly"
  image_id  = "77202c7a-1ab1-4d8d-87c0-566fc959803d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
