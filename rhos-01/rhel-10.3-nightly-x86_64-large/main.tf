module "openstack" {
  source = "../_base"

  name      = "rhel-10-3-nightly-large"
  image_id  = "1d43b4e0-ac69-4bbc-a7ef-0ec3e2015a7c"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
