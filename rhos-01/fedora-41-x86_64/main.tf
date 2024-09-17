module "openstack" {
  source = "../_base"

  name      = "fedora-41"
  image_id  = "18bfc81f-8cec-4851-8968-5b969381ed0b"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
