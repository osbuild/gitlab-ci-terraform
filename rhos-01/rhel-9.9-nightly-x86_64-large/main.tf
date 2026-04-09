module "openstack" {
  source = "../_base"

  name      = "rhel-9-9-nightly-large"
  image_id  = "0bef4b40-ae19-4145-a3bc-728108ffbcfa"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
