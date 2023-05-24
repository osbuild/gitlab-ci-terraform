module "openstack" {
  source = "../_base"

  name      = "centos-stream-8"
  image_id  = "9713349e-6f77-4302-b404-1d5a7df714de"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
