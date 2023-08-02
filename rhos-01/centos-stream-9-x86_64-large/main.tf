module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "9ed77013-a516-46b4-b9a8-1ccae9043f58"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
