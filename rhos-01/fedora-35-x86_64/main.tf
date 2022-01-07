module "openstack" {
  source = "../_base"

  name      = "fedora-35"
  image_id  = "d62a2182-947b-421e-b3db-9b55b4dda522"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
