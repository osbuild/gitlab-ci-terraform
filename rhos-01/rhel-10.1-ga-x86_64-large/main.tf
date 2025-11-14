module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-ga-large"
  image_id  = "b4230a47-93b9-4c32-86ca-77e25b0d0afe"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
