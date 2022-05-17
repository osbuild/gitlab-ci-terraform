module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-ga-large"
  image_id  = "18dee42a-e354-4a4d-9c2d-851540dfed25"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
