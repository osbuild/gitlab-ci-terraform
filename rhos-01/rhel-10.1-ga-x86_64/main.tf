module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-ga"
  image_id  = "b4230a47-93b9-4c32-86ca-77e25b0d0afe"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
