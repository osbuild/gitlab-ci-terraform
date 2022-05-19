module "openstack" {
  source = "../_base"

  name      = "rhel-9-1-nightly"
  image_id  = "55c5d66f-c058-49e0-9e9e-16f624b0ea76"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
