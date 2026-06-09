module "openstack" {
  source = "../_base"

  name      = "rhel-9-9-nightly"
  image_id  = "69a81702-6193-4ddc-8943-c0a5ef230b29"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
