module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-ga-large"
  image_id  = "ce6d37a6-7a03-43fb-8814-69a5a8f39563"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
