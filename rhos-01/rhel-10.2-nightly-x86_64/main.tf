module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly"
  image_id  = "0ca6e354-f4b6-4aa3-bbaf-6d4e93603697"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
