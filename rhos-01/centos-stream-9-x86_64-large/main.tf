module "openstack" {
  source = "../_base"

  name      = "centos-stream-9-large"
  image_id  = "216e9d8e-71f7-4979-a903-396dc37a043b"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
