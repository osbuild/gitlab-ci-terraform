module "openstack" {
  source = "../_base"

  name      = "rhel-8-8-nightly-large"
  image_id  = "e03f8aae-6f44-49d6-91f0-00abc6a2f6fc"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
