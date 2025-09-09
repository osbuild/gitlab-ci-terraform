module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly"
  image_id  = "44553043-43ec-448b-8103-a31d7983de3d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
