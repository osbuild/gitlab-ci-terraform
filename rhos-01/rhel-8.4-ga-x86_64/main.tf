module "openstack" {
  source = "../_base"

  name      = "rhel-8-4-ga"
  image_id  = "d30f0336-745a-45b9-bc87-cf3489e42982"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
