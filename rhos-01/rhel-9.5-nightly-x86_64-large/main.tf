module "openstack" {
  source = "../_base"

  name      = "rhel-9-5-nightly-large"
  image_id  = "78aadf2c-65a2-44b4-a4f6-fe8689aef246"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
