module "openstack" {
  source = "../_base"

  name      = "centos-stream-9-large"
  image_id  = "19a66918-6d92-4bd3-bcf9-4f4835e07342"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
