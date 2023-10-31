module "openstack" {
  source = "../_base"

  name      = "rhel-9-4-nightly-large"
  image_id  = "5879bd0c-ebeb-45da-b3d9-fa63dd5fe831"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
