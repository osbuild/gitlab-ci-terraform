module "openstack" {
  source = "../_base"

  name      = "rhel-8-7-nightly-large"
  image_id  = "27dd121f-1512-4c1d-bed5-a717c7d5c9e2"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
