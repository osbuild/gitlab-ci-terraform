module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "4e90ac0b-e119-486f-abb2-d4d57e9f0c44"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
