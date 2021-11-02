module "openstack" {
  source = "../_base"

  name      = "rhel-9-0"
  image_id  = "62b49be2-e9c6-46c2-b1bb-37e646ac87ed"
  flavor_id = "4b04b7c3-ec50-469f-9c07-c41f0bff4972"
}

output "ip_address" {
  value = module.openstack.ip_address
}
