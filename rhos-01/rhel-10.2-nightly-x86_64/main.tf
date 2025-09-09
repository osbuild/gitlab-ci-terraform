module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly"
  image_id  = "4133a49d-c7be-4160-9418-e83348464838"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
