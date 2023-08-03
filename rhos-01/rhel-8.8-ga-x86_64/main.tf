module "openstack" {
  source = "../_base"

  name      = "rhel-8-8-nightly"
  image_id  = "e12667b7-071d-4719-8de6-596ff50b2165"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
