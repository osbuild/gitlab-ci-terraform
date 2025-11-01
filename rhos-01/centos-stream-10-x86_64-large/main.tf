module "openstack" {
  source = "../_base"

  name      = "centos-stream-10-large"
  image_id  = "ba45c3cb-f1ee-4939-affb-cd4c9023839f"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
