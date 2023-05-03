module "openstack" {
  source = "../_base"

  name      = "rhel-8-9-nightly-large"
  image_id  = "2c3ac9ca-cda6-4d76-be00-8b2657fc7c24"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
