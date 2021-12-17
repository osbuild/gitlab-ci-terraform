module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "cbde2b13-c019-4197-9bf2-ceadee6b0c77"
  flavor_id = "893c20cf-d5ea-4c7d-9eee-2bc4b3e5723e"
}

output "ip_address" {
  value = module.openstack.ip_address
}
