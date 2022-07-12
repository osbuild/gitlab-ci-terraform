module "openstack" {
  source = "../_base"

  name      = "rhel-8-7-nightly"
  image_id  = "27dd121f-1512-4c1d-bed5-a717c7d5c9e2"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
