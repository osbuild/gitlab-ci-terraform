module "openstack" {
  source = "../_base"

  name      = "rhel-9-7-ga-large"
  image_id  = "9a91be35-de5b-49b3-9b5d-e4118114e141"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
