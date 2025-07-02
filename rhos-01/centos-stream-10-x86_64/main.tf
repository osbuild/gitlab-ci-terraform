module "openstack" {
  source = "../_base"

  name      = "centos-stream-10"
  image_id  = "ba605f73-ef9e-4a28-b1e7-849d37a6aa11"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
