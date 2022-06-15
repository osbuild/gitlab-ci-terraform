module "openstack" {
  source = "../_base"

  name      = "rhel-9-1"
  image_id  = "ea4d8610-5125-4f07-aba0-4bf8bd7c9622"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
