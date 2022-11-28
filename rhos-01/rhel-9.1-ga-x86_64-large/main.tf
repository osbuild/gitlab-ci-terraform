module "openstack" {
  source = "../_base"

  name      = "rhel-9-1"
  image_id  = "2852c0f4-caa7-4d0e-9c2b-82617103c809"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
