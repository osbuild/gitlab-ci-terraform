module "openstack" {
  source = "../_base"

  name      = "rhel-8-6-devel"
  image_id  = "d4d51ef4-f79b-4a43-9b34-685c42db9b1c"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
