module "openstack" {
  source = "../_base"

  name      = "fedora-35"
  image_id  = "d62a2182-947b-421e-b3db-9b55b4dda522"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
