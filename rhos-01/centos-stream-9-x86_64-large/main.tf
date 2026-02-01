module "openstack" {
  source = "../_base"

  name      = "centos-stream-9-large"
  image_id  = "46db5716-c810-4f63-a87d-eb68be480496"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
