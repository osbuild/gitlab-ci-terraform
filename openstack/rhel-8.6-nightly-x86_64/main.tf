module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-devel"
  image_id  = "e35f742f-0b6d-4bf1-b666-ec1602bd1776"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
