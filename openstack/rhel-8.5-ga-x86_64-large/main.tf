module "openstack" {
  source = "../_base"

  name      = "rhel-8-5-ga-large"
  image_id  = "b3ddd447-18c5-4495-926b-5b5fdd269d16"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
