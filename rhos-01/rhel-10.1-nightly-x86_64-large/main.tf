module "openstack" {
  source = "../_base"

  name      = "rhel-10-1-nightly-large"
  image_id  = "18ccce5d-c195-45c3-96cb-a7e120b7b6f1"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
