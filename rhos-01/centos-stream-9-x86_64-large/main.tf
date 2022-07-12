module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "9f49b07d-57e2-4998-a8e3-6d13457fde85"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
