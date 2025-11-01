module "openstack" {
  source = "../_base"

  name      = "centos-stream-9"
  image_id  = "92e63672-5a8d-4d9a-9d37-cd0333c48be6"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
