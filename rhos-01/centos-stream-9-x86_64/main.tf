module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "e4400550-7c25-4a39-9656-47d9f17ca5b3"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
