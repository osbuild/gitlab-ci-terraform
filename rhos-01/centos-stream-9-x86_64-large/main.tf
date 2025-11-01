module "openstack" {
  source = "../_base"

  name      = "centos-stream-9-large"
  image_id  = "92e63672-5a8d-4d9a-9d37-cd0333c48be6"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
