module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga"
  image_id  = "7ccf87ad-19a3-4b3d-889f-5a36e9c6d976"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
