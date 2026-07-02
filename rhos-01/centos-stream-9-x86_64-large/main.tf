module "openstack" {
  source = "../_base"

  name      = "centos-stream-9-large"
  image_id  = "1bf5e119-e302-47d3-a079-62240e9667e1"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
