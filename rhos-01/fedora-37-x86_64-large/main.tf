module "openstack" {
  source = "../_base"

  name      = "fedora-37"
  image_id  = "edeb1b44-b086-4e61-9648-a801cc098027"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
