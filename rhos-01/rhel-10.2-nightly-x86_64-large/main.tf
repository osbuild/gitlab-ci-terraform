module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-nightly-large"
  image_id  = "4133a49d-c7be-4160-9418-e83348464838"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
