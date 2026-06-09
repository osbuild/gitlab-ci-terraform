module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly"
  image_id  = "8c164d95-a76b-43e3-b9c0-b0ecec23950d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
