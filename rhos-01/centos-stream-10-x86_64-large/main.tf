module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "ba605f73-ef9e-4a28-b1e7-849d37a6aa11"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
