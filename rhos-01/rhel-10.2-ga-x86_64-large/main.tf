module "openstack" {
  source = "../_base"

  name      = "rhel-10-2-ga-large"
  image_id  = "ddb7085e-a076-4716-a988-cf8d7f05442e"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
