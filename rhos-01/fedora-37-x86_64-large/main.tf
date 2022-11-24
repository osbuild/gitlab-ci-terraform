module "openstack" {
  source = "../_base"

  name      = "fedora-37"
  image_id  = "bcc4bb14-db29-4a46-8927-404536e002be"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
