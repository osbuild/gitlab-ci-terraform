module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly"
  image_id  = "2e600a22-aa35-41b3-8e6a-86a66b612fee"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
