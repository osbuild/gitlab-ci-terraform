module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-ga"
  image_id  = "18dee42a-e354-4a4d-9c2d-851540dfed25"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
