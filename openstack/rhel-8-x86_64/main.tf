module "openstack" {
  source = "../_base"

  name      = "rhel-8-3"
  image_id  = "24eeacec-51c8-4df7-9d8c-a60f900f9656"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
