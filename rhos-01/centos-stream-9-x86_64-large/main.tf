module "openstack" {
  source = "../_base"

  name      = "centos-stream-9-large"
  image_id  = "f0a7cdf9-d3be-49b4-979f-eda5c8a1eb9c"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
