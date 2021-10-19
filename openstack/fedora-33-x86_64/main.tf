module "openstack" {
  source = "../_base"

  name      = "fedora-33"
  image_id  = "dc3625bc-7d70-4d88-a723-a5e8b2016f89"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
