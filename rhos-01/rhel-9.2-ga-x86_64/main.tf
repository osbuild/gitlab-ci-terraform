module "openstack" {
  source = "../_base"

  name      = "rhel-9-2-nightly"
  image_id  = "ad07fa2e-4c90-4360-b596-8ca6be29dee1"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
