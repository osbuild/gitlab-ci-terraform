module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-nightly"
  image_id  = "2a813e51-6493-4220-96cc-8151d91999ee"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
