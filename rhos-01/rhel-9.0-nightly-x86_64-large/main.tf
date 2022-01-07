module "openstack" {
  source = "../_base"

  name      = "rhel-9-0"
  image_id  = "dc869d35-7350-43c3-b38f-1b178ec92395"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
