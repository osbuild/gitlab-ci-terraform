module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "19a66918-6d92-4bd3-bcf9-4f4835e07342"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
