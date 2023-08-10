module "openstack" {
  source = "../_base"

  name      = "rhel-8-9-nightly-large"
  image_id  = "abfa0bc2-f34c-448a-963f-676a5ff3cae9"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
