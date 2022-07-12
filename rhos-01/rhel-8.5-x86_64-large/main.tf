module "openstack" {
  source = "../_base"

  name      = "rhel-8-5"
  image_id  = "b3ddd447-18c5-4495-926b-5b5fdd269d16"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
