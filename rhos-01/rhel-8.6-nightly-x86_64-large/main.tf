module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-nightly-large"
  image_id  = "da62f2da-ae00-4e41-91b4-88ef75c1d4f9"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
