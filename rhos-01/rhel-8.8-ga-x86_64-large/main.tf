module "openstack" {
  source = "../_base"

  name      = "rhel-8-8-nightly-large"
  image_id  = "e12667b7-071d-4719-8de6-596ff50b2165"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
