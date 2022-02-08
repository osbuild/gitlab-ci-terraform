module "openstack" {
  source = "../_base"

  name      = "centos-stream-8"
  image_id  = "0285b667-3d71-4e8d-a66d-a0442bae9116"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
