module "openstack" {
  source = "../_base"

  name      = "rhel-9-7-nightly-large"
  image_id  = "b9035168-34bc-47df-9d40-2e5fd65fb510"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
