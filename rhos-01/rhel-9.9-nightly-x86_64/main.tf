module "openstack" {
  source = "../_base"

  name      = "rhel-9-9-nightly"
  image_id  = "232cfdfd-bc4c-4600-83ae-265518d3d9bf"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
