module "openstack" {
  source = "../_base"

  name      = "rhel-9-2-nightly-large"
  image_id  = "ad07fa2e-4c90-4360-b596-8ca6be29dee1"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
