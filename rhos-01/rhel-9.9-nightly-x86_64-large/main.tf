module "openstack" {
  source = "../_base"

  name      = "rhel-9-9-nightly-large"
  image_id  = "69a81702-6193-4ddc-8943-c0a5ef230b29"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
