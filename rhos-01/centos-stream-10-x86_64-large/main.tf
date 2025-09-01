module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "f9b0930d-3aa4-46c9-a568-051903c6c9c2"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
