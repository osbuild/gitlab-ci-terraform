module "openstack" {
  source = "../_base"

  name      = "rhel-9-8-nightly-large"
  image_id  = "46ba4e97-5390-4cdf-bab3-bc9065b9c83b"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
