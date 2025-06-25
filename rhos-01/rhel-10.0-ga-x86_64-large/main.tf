module "openstack" {
  source = "../_base"

  name      = "rhel-10-0-ga-large"
  image_id  = "00c711a8-94f0-4095-b13d-b7eb50c8a4d3"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
