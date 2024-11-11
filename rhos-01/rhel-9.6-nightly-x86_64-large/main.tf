module "openstack" {
  source = "../_base"

  name      = "rhel-9-6-nightly-large"
  image_id  = "3e27163f-22da-454e-88c3-b5cd0e680111"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
