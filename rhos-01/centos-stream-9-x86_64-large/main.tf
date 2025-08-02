module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "c35b1574-444c-43e9-93c2-9aea0e1ab179"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
