module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly-large"
  image_id  = "52201b9c-2a23-40b3-81f7-d42b439de651"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
