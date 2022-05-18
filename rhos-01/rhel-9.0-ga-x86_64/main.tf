module "openstack" {
  source = "../_base"

  name      = "rhel-9-0-ga"
  image_id  = "debe655a-cc93-4f42-9d1e-23b81b2d08c4"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
