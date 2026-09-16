module "openstack" {
  source = "../_base"

  name      = "rhel-9-9-nightly"
  image_id  = "961e942a-ec79-411f-96c9-3a7ffbd6d8d0"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
