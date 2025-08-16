module "openstack" {
  source = "../_base"

  name      = "rhel-9-6-ga"
  image_id  = "ddf50504-18b5-4d09-809a-3b8dc1f7bb13"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
