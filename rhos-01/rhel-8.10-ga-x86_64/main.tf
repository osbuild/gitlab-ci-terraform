module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga"
  image_id  = "f40204d5-8f31-4e6f-bc7f-2e06e9daf849"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
