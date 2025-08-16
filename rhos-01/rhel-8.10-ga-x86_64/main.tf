module "openstack" {
  source = "../_base"

  name      = "rhel-8-10-ga"
  image_id  = "77e1ae34-fa93-4f34-ab1e-fe4f91d0141b"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
