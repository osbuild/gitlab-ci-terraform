module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-nightly"
  image_id  = "da62f2da-ae00-4e41-91b4-88ef75c1d4f9"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
