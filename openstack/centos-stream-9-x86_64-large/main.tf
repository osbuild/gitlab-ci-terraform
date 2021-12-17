module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "cbde2b13-c019-4197-9bf2-ceadee6b0c77"
  flavor_id = "4b04b7c3-ec50-469f-9c07-c41f0bff4972"
}

output "ip_address" {
  value = module.openstack.ip_address
}
