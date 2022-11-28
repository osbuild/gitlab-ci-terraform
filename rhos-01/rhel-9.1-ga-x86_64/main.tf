module "openstack" {
  source = "../_base"

  name      = "rhel-9-1-ga"
  image_id  = "2852c0f4-caa7-4d0e-9c2b-82617103c809"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
