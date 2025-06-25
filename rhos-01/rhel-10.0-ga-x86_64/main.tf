module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-ga"
  image_id  = "00c711a8-94f0-4095-b13d-b7eb50c8a4d3"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
