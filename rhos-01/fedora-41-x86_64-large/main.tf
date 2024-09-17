module "openstack" {
  source = "../_base"

  name      = "fedora-41"
  image_id  = "18bfc81f-8cec-4851-8968-5b969381ed0b"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
