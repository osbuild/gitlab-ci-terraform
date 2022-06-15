module "openstack" {
  source = "../_base"

  name      = "rhel-9-1-nightly"
  image_id  = "ea4d8610-5125-4f07-aba0-4bf8bd7c9622"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
