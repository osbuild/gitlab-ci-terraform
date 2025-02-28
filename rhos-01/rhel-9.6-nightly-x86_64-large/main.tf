module "openstack" {
  source = "../_base"

  name      = "rhel-9-6-nightly-large"
  image_id  = "d3ae893b-be51-4cf8-98a7-ef379248e1b4"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
