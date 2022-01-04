module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "e9f71aa2-79ab-4ee0-8a38-296395751261"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
