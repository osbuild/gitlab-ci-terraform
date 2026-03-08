module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly-large"
  image_id  = "3f624763-6b3b-4ae8-a559-e24726508bcd"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
