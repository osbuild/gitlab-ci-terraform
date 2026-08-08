module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly"
  image_id  = "52201b9c-2a23-40b3-81f7-d42b439de651"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
