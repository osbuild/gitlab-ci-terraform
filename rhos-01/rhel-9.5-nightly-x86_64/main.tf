module "openstack" {
  source = "../_base"

  name      = "rhel-9-5-nightly"
  image_id  = "f836a59c-7247-4dc9-93e2-d2209742fa33"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
