module "openstack" {
  source = "../_base"

  name      = "rhel-9-0-nightly"
  image_id  = "dc869d35-7350-43c3-b38f-1b178ec92395"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
