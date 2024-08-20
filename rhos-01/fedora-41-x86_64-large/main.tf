module "openstack" {
  source = "../_base"

  name      = "fedora-41"
  image_id  = "3b9ecc9c-6aa0-4317-8a13-6978379346d1"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
