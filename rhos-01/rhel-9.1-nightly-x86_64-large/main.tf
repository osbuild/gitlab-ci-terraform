module "openstack" {
  source = "../_base"

  name      = "rhel-9-1"
  image_id  = "55c5d66f-c058-49e0-9e9e-16f624b0ea76"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
