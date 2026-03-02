module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "bda36ebc-d9aa-42d7-afd3-3f9a7b90ec4d"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
