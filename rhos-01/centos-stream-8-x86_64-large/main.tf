module "openstack" {
  source = "../_base"

  name      = "centos-stream-8"
  image_id  = "cbdaa1f7-f12d-4e7c-b4c0-43a3346c6278"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
