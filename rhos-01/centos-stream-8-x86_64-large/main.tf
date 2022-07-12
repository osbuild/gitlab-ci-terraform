module "openstack" {
  source = "../_base"

  name      = "centos-stream-8"
  image_id  = "0285b667-3d71-4e8d-a66d-a0442bae9116"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
