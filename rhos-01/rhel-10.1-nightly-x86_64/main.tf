module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-nightly"
  image_id  = "009c62e2-2726-4f45-ae93-a5f96c6851fc"
  flavor_id = "bca7d8ab-b1a4-4883-b4c6-a9536d51ebdd"
}

output "ip_address" {
  value = module.openstack.ip_address
}
