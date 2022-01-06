module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "fae9f0e7-c5ad-4bec-becb-c7d36db2b075"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
