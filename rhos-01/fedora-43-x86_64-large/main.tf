module "openstack" {
  source = "../_base"

  name      = "fedora-43-large"
  image_id  = "573973f2-a4cd-4ad7-b05d-a2cbe979a374"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
