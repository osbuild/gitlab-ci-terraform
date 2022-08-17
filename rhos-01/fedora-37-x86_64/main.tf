module "openstack" {
  source = "../_base"

  name      = "fedora-37"
  image_id  = "edeb1b44-b086-4e61-9648-a801cc098027"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
