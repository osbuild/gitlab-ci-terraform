module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly"
  image_id  = "3f624763-6b3b-4ae8-a559-e24726508bcd"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
