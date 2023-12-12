module "openstack" {
  source = "../_base"

  name      = "rhel-8-8-nightly"
  image_id  = "e03f8aae-6f44-49d6-91f0-00abc6a2f6fc"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
