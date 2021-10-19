module "openstack" {
  source = "../_base"

  name      = "rhel-8-5-devel"
  image_id  = "b3ddd447-18c5-4495-926b-5b5fdd269d16"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
