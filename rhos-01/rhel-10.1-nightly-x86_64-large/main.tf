module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-nightly-large"
  image_id  = "009c62e2-2726-4f45-ae93-a5f96c6851fc"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
