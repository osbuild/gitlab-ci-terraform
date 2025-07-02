module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "3b12e2bc-38be-4c7e-aba8-549d9b14a326"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
