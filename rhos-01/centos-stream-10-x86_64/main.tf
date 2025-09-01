module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "f9b0930d-3aa4-46c9-a568-051903c6c9c2"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
