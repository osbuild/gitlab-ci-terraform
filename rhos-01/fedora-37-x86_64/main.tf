module "openstack" {
  source = "../_base"

  name      = "fedora-37"
  image_id  = "bcc4bb14-db29-4a46-8927-404536e002be"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
