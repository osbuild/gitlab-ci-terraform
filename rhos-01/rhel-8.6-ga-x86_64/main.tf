module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-ga"
  image_id  = "18dee42a-e354-4a4d-9c2d-851540dfed25"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
