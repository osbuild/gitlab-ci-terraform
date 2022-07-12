module "openstack" {
  source = "../_base"

  name      = "centos-stream-8"
  image_id  = "0285b667-3d71-4e8d-a66d-a0442bae9116"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
