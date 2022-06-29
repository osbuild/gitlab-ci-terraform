module "openstack" {
  source = "../_base"

  name      = "fedora-36"
  image_id  = "60f5c075-936c-47b4-a00b-0cb6867ffd32"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
