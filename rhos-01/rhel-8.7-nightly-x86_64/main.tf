module "openstack" {
  source = "../_base"

  name      = "rhel-8-7-nightly"
  image_id  = "82e74f2b-edc4-4226-a42d-49f0a8eb70c6"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
