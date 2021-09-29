module "openstack" {
  source = "../_base"

  name      = "rhel-8-6"
  image_id  = "40cd4980-64b2-47c8-9a9b-3287f0439ea9"
  flavor_id = "4b04b7c3-ec50-469f-9c07-c41f0bff4972"
}

output "ip_address" {
  value = module.openstack.ip_address
}
