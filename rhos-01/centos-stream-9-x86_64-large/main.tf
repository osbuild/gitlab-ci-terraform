module "openstack" {
  source = "../_base"

  name      = "centos-stream-9-large"
  image_id  = "e4400550-7c25-4a39-9656-47d9f17ca5b3"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
