module "openstack" {
  source = "../_base"

  name      = "rhel-9-4-ga-large"
  image_id  = "35de4334-995e-4043-ae59-266f253b2306"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
