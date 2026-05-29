module "openstack" {
  source = "../_base"

  name      = "centos-stream-9-large"
  image_id  = "ea65c822-b483-436b-9d86-67f58327918f"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
