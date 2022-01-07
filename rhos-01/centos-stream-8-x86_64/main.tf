module "openstack" {
  source = "../_base"

  name      = "centos-stream-8"
  image_id  = "0285b667-3d71-4e8d-a66d-a0442bae9116"
  flavor_id = "f2c4469b-f516-46d1-8b87-1dcca68fb3d9"
}

output "ip_address" {
  value = module.openstack.ip_address
}
