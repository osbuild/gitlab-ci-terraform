module "openstack" {
  source = "../_base"

  name      = "rhel-9-0-beta-nightly"
  image_id  = "2a88ab37-81a7-4822-8e0f-ee564c8caa83"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
