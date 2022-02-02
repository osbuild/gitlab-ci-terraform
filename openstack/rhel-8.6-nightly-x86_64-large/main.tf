module "openstack" {
  source = "../_base"

  name      = "rhel-8-6"
  image_id  = "e35f742f-0b6d-4bf1-b666-ec1602bd1776"
  flavor_id = "4b04b7c3-ec50-469f-9c07-c41f0bff4972"
}

output "ip_address" {
  value = module.openstack.ip_address
}
