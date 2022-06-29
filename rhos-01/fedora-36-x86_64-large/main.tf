module "openstack" {
  source = "../_base"

  name      = "fedora-36"
  image_id  = "60f5c075-936c-47b4-a00b-0cb6867ffd32"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
