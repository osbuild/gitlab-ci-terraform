module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly-large"
  image_id  = "8c164d95-a76b-43e3-b9c0-b0ecec23950d"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
