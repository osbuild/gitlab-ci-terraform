module "openstack" {
  source = "../_base"

  name      = "rhel-9-0"
  image_id  = "debe655a-cc93-4f42-9d1e-23b81b2d08c4"
  flavor_id = "c3ec7a0a-0443-4253-a6ab-040cc0278ced"
}

output "ip_address" {
  value = module.openstack.ip_address
}
