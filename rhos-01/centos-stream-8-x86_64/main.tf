module "openstack" {
  source = "../_base"

  name      = "centos-stream-8"
  image_id  = "cbdaa1f7-f12d-4e7c-b4c0-43a3346c6278"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
