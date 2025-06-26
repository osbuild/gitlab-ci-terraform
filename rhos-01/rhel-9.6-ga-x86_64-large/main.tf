module "openstack" {
  source = "../_base"

  name      = "rhel-9-6-ga-large"
  image_id  = "0d8a6385-d818-40ea-9dc3-3154fd131baf"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
