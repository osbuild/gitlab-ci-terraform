module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly"
  image_id  = "1d43b4e0-ac69-4bbc-a7ef-0ec3e2015a7c"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
