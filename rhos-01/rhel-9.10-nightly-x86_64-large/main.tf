module "openstack" {
  source = "../_base"

  name      = "rhel-9-10-nightly-large"
  image_id  = "4b4fe2e0-67e4-4c8c-91e2-42413ac422ce"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
