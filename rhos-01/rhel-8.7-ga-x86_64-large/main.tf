module "openstack" {
  source = "../_base"

  name      = "rhel-8-7-ga-large"
  image_id  = "31bbd2af-c85c-4aab-b3ce-7cd23f5267ee"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
