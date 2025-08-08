module "openstack" {
  source = "../_base"

  name      = "rhel-9-7-nightly"
  image_id  = "b9035168-34bc-47df-9d40-2e5fd65fb510"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
