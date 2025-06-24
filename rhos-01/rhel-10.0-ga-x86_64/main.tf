module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-ga"
  image_id  = "ce6d37a6-7a03-43fb-8814-69a5a8f39563"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
