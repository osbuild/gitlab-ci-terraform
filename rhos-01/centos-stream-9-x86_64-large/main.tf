module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "94b7f738-c59e-49c2-a578-7c03cc563386"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
