module "openstack" {
  source = "../_base"

  name      = "rhel-9-6-nightly"
  image_id  = "3e27163f-22da-454e-88c3-b5cd0e680111"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
